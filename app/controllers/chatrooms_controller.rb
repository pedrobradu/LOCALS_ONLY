class ChatroomsController < ApplicationController
    def show
        profile_user = User.find(params[:user_id])
        current_user_chats = current_user.chatrooms
        profile_user_chats = profile_user.chatrooms
        @chatroom = (current_user_chats & profile_user_chats).first
        if @chatroom.nil?
            @chatroom = Chatroom.create(name: "#{current_user.name} e #{profile_user.name}")
            @chatroom.chat_memberships.create(user: current_user)
            @chatroom.chat_memberships.create(user: profile_user)
        end
        @message = Message.new
    end
end
