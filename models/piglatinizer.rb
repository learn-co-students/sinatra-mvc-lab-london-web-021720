class PigLatinizer
    attr_reader :text

    def vowel_start(word)
        if word[0].downcase.scan(/[aeiou]/).count == 1
            true
        else
            false
        end
    end

    def get_words(text)
        text.split(" ")
    end

    def second_vowel(word)
        if word[1].downcase.scan(/[aeiou]/).count == 1
            true
        else
            false
        end
    end

    def third_vowel(word)
        if word[2].downcase.scan(/[aeiou]/).count == 1
            true
        else
            false
        end
    end

    def latinize(text)
        words = get_words(text)
        arr = []
        words.each do |w|
            if vowel_start(w)
                arr << w + "way"
            elsif w.size > 1
                if second_vowel(w)
                    # Take off first consonant and latinize
                    pig = w[0] + "ay"
                    word = w[1..-1] + pig
                    arr << word
                elsif third_vowel(w)
                    # Take off first 2 consonants
                    # And latinize
                    pig = w[0] + w[1] + "ay"
                    word = w[2..-1] + pig
                    arr << word
                else
                    # First three and latinize
                    pig = w[0] + w[1] + w[2] + "ay"
                    word = w[3..-1] + pig
                    arr << word
                end
            end
        end
        arr
    end

    def restringify(text)
        list = latinize(text)
        sen = ""
        list.each do |w|
            sen = sen + w + " "
        end
        sen.slice!(-1)
        sen
    end

    def piglatinize(phrase)
        answer = restringify(phrase)
        answer
    end


end
