class ActivitiesController < ApplicationController
  def index
    if params[:category].present?
      @activities = Activity.where(category: params[:category])
    else
      @activities = Activity.all
    end

    if params[:ranking].present?
      @activities = @activities.where("ranking > ?", params[:ranking])
    end

    if params[:tags].present?
      @activities = @activities.joins(:tags).where(tags: params[:tags])
    end

    map(@activities)

    activity_tags(Tag.all)


    # @filter = Activity.new(params[:activity])
    # @filtered_activities = Activity.where(category: )
  end

  def show
    @activity = Activity.find(params[:id])
    @item = WishlistItem.new
    @marker = [{
      lat: @activity.latitude,
      lng: @activity.longitude,
      info_window: render_to_string(partial: "info_window", locals: { activity: @activity })
    }]

    @user_marker = [{
      lat: -23.570184635866426,
      lng: -46.650014746017646,
      info_window: render_to_string(partial: "user_info_window")
    }]

    # CÓDIGO PRA MOSTRAR O MARKER DE ACORDO COM ENDEREÇO DO USER NO CADASTRO!
    # {
    #   lat: @user.latitude,
    #   lng: @user.longitude,
    #   # info_window: render_to_string(partial: "info_window", locals: { activity: @activity })
    # }

    @review = Review.new
    # @wishlists = Wishlist.all.order(:title)

    @near = Activity.near(current_user, 60)

    @checkin = Checkin.find_by(activity_id: @activity, user_id: current_user)

    @best_users = User.joins(:checkins).where(checkins: { activity_id: @activity.id } ).order(count: :desc)

    activity_tags(Tag.all)


  end

  def map(activities)
    @markers = activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end
  end

  def activity_tags(tags)
    #pegar todas as instancias de tag
    #iterar nas tags e fazer uma array com a sub_categoria sem colocar repetidas
    #pegar a sub_categoria de tag e transformar na key principal dentro de uma hash
    #iterar sobre as tags e jogar as tag_names dentro da key que tiverem a mesma sub_categoria
    @tag_hash = {}
    array_sub = tags.activity_tags.pluck(:sub_category).uniq.sort
    array_sub.each do |sub|
      sub_sym = sub.to_sym
      @tag_hash[sub_sym] = {}
      tags.activity_tags.each do |tag|
        @tag_hash[sub_sym][tag.tag_name] = tag.id if tag.sub_category == sub
      end
    end

    # array_sub.each do |sub|
    #   sub_sym = sub.to_sym
    #   @tag_hash[sub_sym].sort.to_h
    # end
  end
end
