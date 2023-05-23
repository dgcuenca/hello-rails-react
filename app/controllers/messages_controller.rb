class MessagesController < ApplicationController
  def index; end

  def random
    random_message = Message.order('RANDOM()').first
    render json: { greeting: random_message&.content }
  end
end
