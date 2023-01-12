class Writer
  attr_reader :message

  def initialize(file) 
    file = File.open(file, "r")
    @message = file.read
  end
end