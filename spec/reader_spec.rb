require './lib/reader'

RSpec.describe Reader do 
  it 'will exist' do 
    braille = 'braille_spec.txt'
    reader = Reader.new(braille)
  end

  it 'will read a file and puts a message' do 
    braille = 'braille_spec.txt'
    reader = Reader.new(braille)
    
    expect(reader.message).to eq( ".00.00000.0.\n0.....0.0..0\n0...0.0.0...")
  end
end