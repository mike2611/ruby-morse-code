def decoder(code)
  code_english = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                   '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                   '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                   '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '/' => ' ' }
  code_english[code]
end

def decode_char_set(code_chars)
  code_chars = code_chars.split
  char_set = ''
  code_chars.each do |code_char|
    char_set += decoder(code_char)
  end
  char_set
end

def decode_sentence(code_sentence)
  code_sentence = code_sentence.split('   ')
  sentence = ''
  code_sentence.each do |code_word|
    sentence += "#{decode_char_set(code_word)} "
  end
  sentence
end
