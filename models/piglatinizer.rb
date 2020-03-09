class PigLatinizer


    def piglatinize(phrase)
        if phrase.split(" ").length > 1
            piggy_latin = phrase.split(" ").map { |word| convert_word_to_piggies(word) }.join(" ")
        else
            piggy_latin = convert_word_to_piggies(phrase)
        end
        piggy_latin
    end

    def convert_word_to_piggies(word)
        if word.start_with?(/[aeiouAEIOU]/)
            word = "#{word}way"
        else
            while word.start_with?(/[^aeiouAEIOU]/)
                word = "#{word[1..-1]}#{word[0]}"
            end
            word = "#{word}ay"
        end
        word
    end
end