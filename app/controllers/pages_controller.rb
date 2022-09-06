class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def landingpage
    @skip_footer = true
    @skip_navbar = true
  end
end
