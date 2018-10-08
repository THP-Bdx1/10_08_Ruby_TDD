def translate(string)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = string.split(' ')
    phrase = []

words.each_with_index do |word, i|
    pig_latin = ''
    qu = false                              #pour un mot ne comprenant pas 'qu' (voir conditions plus bas)
    if vowels.include? word[0]              #Rule 1 : On ajoute "ay" à la fin du mot s'il commence par une voyelle
        pig_latin = word + 'ay'
        phrase.push(pig_latin)              #On insère le résultat dans l'array phrase
    else
        word = word.split('')               #sinon on découpe le mot en lettres
        count = 0
        word.each_with_index do |char, index|       #pour chaque lettre, on le découpe
            if vowels.include? char                     #si une voyelle est contenu dans le caractère suivant
                if char == 'u' and pig_latin[-1] == 'q'     #si 'u' est placé après un q dans la traduction (pig_latin)
                    qu = true                               #alors qu existe
                    pig_latin = words[i][count + 1..words[i].length] + pig_latin + 'uay'        #on ajoute pour chacun 'uay' à la position après le q
                    phrase.push(pig_latin)
                    next
                end
                break
            else
                if char == 'q' and word[i+1] == 'u'     #si q est suivi de u dans le mot
                    qu = true                           #alors qu existe (vrai)
                    pig_latin = words[i][count + 2..words[i].length] + 'quay'               #on ajoute 'quay' entre la position 2 et la longueur du mot
                    phrase.push(pig_latin)
                    next
                else
                    pig_latin += char                                                       #on ajoute les caractères à chaque fois à la traduction
                end
                count += 1                                                                  
            end
        end
        if not qu                                                                           #si la condition 'qu' n'est pas vérifiée (pas de 'q' avant le 'u', alors
            pig_latin = words[i][count..words[i].length] + pig_latin + 'ay'                    #on ajoute 'ay' après
            phrase.push(pig_latin)
        end
    end

end
phrase.join(' ')                                                                               #on joint le tout
end
