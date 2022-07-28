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

#method to decode the entire message in Morse code, takes a string parameter, and return the string representation. Every word will be separated by 3 spaces.
def decode(message)
    words = split_message(message)
    decoded_message = ''
    words.each do |word|
        decoded_word =  decode_word(word)
        decoded_message += "#{decoded_word} "
    end
    decoded_message.strip
end