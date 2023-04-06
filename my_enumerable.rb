module MyEnumerable

def all? 
    each {|n| return false unless yield n}
    true
end

def any?
    each {|n| return true if yield n}
    false
end

def filter?
    array = []
    each {|n| array.push(n) if yield n}
    array
    end
end