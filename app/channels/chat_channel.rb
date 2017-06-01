class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def message(payload)
    logger.info 'client is sending message'
    logger.info payload

    Message.create user: current_user, content: payload['content']

    ActionCable.server.broadcast 'chat', message: payload['content'], user: current_user
  end
end
