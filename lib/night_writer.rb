require_relative 'reader'
require_relative 'message_converter'
reader = Reader.new(ARGV[0])
message = reader.message
message_converter = MessageConverter.new(message)
message_converter.convert_to_braille
message_converter.create_new_braille_file(ARGV[1])