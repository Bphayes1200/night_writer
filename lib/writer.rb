class Writer
  attr_reader :message

  def initialize(file) 
    new_file = File.open(file, "r")
    @message = new_file.read
    new_file.close
  end
end