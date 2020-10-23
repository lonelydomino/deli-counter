katz_deli = ["bob", "bobo"]

def line(katz_deli)
    count = 0
    new_array = []
    if katz_deli.size == 0
        puts "The line is currently empty."
    else
        katz_deli.each do |item|
            new_array.push("#{count+1}. #{item}")
            count += 1
        end
        new_array = new_array.join(" ")
        puts "The line is currently: " + new_array
    end

end


def take_a_number(katz_deli, name)
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
    return katz_deli
end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
end
