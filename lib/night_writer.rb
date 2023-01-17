require_relative 'writer'
require_relative 'message_converter'
writer = Writer.new(ARGV[0])
message = writer.message
message_converter = MessageConverter.new(message)
message_converter.convert_to_braille
message_converter.create_new_braille_file(ARGV[1])