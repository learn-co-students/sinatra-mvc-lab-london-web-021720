class PigLatinizer

    attr_accessor :word 

    # def initialize(word)
    #     @word = word
    # end 

    def a_word(word) 
        letters = word.split("")
        new_word = nil 
        new_letters = letters.dup
        if letters[0] =~ /[aeiouAEIOU]/
            letters.push("way")
            new_word= letters.join()
        else
             letters.each do |letter|
                  if letter =~ /[^aeiouAEIOU]/
                    
                    new_letters.push(letter)
                    new_letters.shift
                  else
                    break
                 end 
            end 
            new_letters.push("ay")
            new_word = new_letters.join("")
        end
        new_word
    end
    
    
    def piglatinize(sentence_or_word) 
        pigged = []
        if  sentence_or_word =~ /\s/
            words = sentence_or_word.split(" ")
            words.each{|word| pigged << a_word(word)}
            piggy = pigged.join(" ")
            
        else
            piggy = a_word(sentence_or_word)

        end
        piggy
    end
    







end 