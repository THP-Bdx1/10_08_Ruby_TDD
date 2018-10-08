def who_is_bigger(a,b,c)
if a == nil || b == nil || c == nil
        return "nil detected"
end
hash={"a"=>a, "b"=>b, "c"=>c}
m = hash.max_by{|k,v| v}
return "#{m[0]} is bigger"
end

def reverse_upcase_noLTA(string)
    (string).reverse.upcase.tr("LTA","")
end


def array_42(array)
   array.include?(42)
end

def magic_array(array)
    array.flatten.sort.map{|e| e * 2 if e.is_a? Numeric}.compact.reject!{|n|n%3==0}.uniq.sort
end
