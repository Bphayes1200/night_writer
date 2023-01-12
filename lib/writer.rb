class Writer
  attr_reader :message

  def initialize 
    file = File.open('message.txt', "r")
    @message = file.read
  end
end