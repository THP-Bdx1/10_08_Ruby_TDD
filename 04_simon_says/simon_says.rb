def echo(n)
"#{n}"
end 

def shout(n)
    n.upcase
end

def repeat(n, v=2)
n + (" #{n}" * (v-1))   
end

def start_of_word(n,v)
n[0..v-1]
end

def first_word(n)
n.split.first
end

def titleize(n)
    words_to_ignore = ["and","the"]
    new_string = n.split(' ')
    .each{|i| i.capitalize! if ! words_to_ignore.include? i }
    new_string[0].capitalize!
    new_string.join(' ')
end
