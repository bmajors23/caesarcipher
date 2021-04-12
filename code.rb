def cipher(phrase, shift)
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
    "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", 
    "y", "z"]
    new_phrase = ""
    characters = phrase.split("")
    for i in 0..characters.length - 1
        if characters[i] == " "
            new_phrase += " "
        else
            character = characters[i].to_s
            if character == character.upcase
                lower_character = character.downcase
                num = alphabet.index(lower_character).to_i
                num += shift
                if num >= 26
                    num -= 26
                end
                capitalized = alphabet[num].upcase
                new_phrase += capitalized
            else
                lower_character = character.downcase
                num = alphabet.index(lower_character).to_i
                num += shift
                if num >= 26
                    num -= 26
                end
                new_phrase += alphabet[num]
            end
        end
    end
    p new_phrase
end

cipher("Zoinks Man", 7)
