class MessageConverter
  attr_reader :message_array

  def initialize(message)
    @message_array = message.split(//)
  end

  def braille_alphabet
    english_to_braille = {
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "00", ".."],
      "k" => ["0.", "..", "0."],
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "q" => ["00", "00", "0."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "0.", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"],
      " " => ["..", "..", ".."]

      }
  end

  def find_all_braille
    all_letters = []
    @message_array.each do |letter|
      braille_alphabet.find do |key, value|
        if key == letter
          all_letters << value
        end
      end 
    end
    all_letters
  end

  def convert_to_braille
    formatted_letters = []
    top_row = find_all_braille.map { |letter| letter[0]}
    middle_row = find_all_braille.map { |letter| letter[1]}
    bottom_row = find_all_braille.map { |letter| letter[2]}

    format_array = [top_row, middle_row, bottom_row]
    
    final_array = format_array.map { |array| array.join}
    braille = final_array.join("\n")
    braille
  end

  def create_new_file(file)
    new_file = File.open(file, "w")
    new_file.write(convert_to_braille)
    new_file.close
  end
end