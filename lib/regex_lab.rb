def starts_with_a_vowel?(word)
  word.match(/\b[aeiouAEIOU]/).to_s == word[0]
end

def words_starting_with_un_and_ending_with_ing(text)
  result = []
    text = text.split(" ")
    text.each do |var|
      result << var if var.match(/un|ing/)
    end
    result
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/\A[A-Z]|[.,!?]\z/) == [text[0][0], text[-1][-1]]
end

def valid_phone_number?(phone)
  phone.scan(/\d/).length == 10 ? true:false
end
