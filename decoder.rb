MORSE_CODE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

# decoding a Morse code character, and return the corresponding character in uppercase
def decode_morse_character(char)
  MORSE_CODE[char].upcase
end

# split sentence to single words
def split_message(message)
  message.split('   ')
end

# decode an entire word in Morse code, takes a string parameter, and return the string representation.
# Every character in a word will be separated by a single space.
def decode_word(word)
  decoded_word = ''
  word.split.each do |morse|
    decoded_char = decode_morse_character(morse)
    decoded_word += decoded_char.to_s
  end
  decoded_word
end

# method to decode the entire message in Morse code, takes a string parameter, and return the string
# representation. Every word will be separated by 3 spaces.
def decode(message)
  words = split_message(message)
  decoded_message = ''
  words.each do |word|
    decoded_word = decode_word(word)
    decoded_message += "#{decoded_word} "
  end
  decoded_message.strip
end

puts decode('.-')
puts decode('-- -.--')
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
