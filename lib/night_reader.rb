require_relative 'reader'
require_relative 'message_converter'
reader = Reader.new(ARGV[0])
message = reader.message
message_converter = MessageConverter.new(message)
message_converter.braille_to_english
message_converter.create_new_english_file(ARGV[1])