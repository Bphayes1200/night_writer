require_relative 'writer'
require_relative 'message_converter'
writer = Writer.new(ARGV[0])
message = writer.message
message_converter = MessageConverter.new(message)
message_converter.convert
message_converter.create_new_file(ARGV[1])