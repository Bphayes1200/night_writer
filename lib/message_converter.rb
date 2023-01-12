class MessageConverter
  attr_reader :message_array

  def initialize(message)
    @message_array = message.split(//)
  end
end