class StaticPagesController < ApplicationController
  def home
  	session[:conversations] ||= []

  	@users = User.all.where.not(id: current_user)
  	@conversations = Conversation.includes(:recipient, :messages).find(session[:conversations])
  end

  def help
  end

  def article
  end

  def contacts
  end
end
