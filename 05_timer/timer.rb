def time_string(n)
    if n <60
        c=n
        b=00
        a=00
    elsif n<3600
        b=n/60
        c=(n%60)
        a=00
    else
        a=n/3600
        b=(n-3600)/60
        d=(n-3600)
        c=d%60 
    end
    c=c.to_s.rjust(2,"0")
    b=b.to_s.rjust(2,"0")
   a=a.to_s.rjust(2,"0")
"#{a}:#{b}:#{c}"
    end
