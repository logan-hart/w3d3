def range(start, finish)                            #(1 , 5)
    return [] if start >= finish                    #base
    [start] + range(start+1, finish)

    #[1]
    #[1, 2, 3, 4,]
end

# p range(1, 5)

def iterative_sum_of_an_array(arr)
    sum = 0
    arr.each do |ele|
        sum += ele
    end
    sum
end

# p iterative_sum_of_an_array([1, 2, 3, 4])

def recursive_sum_of_an_array(arr)
    return 0 if arr.empty?
    arr[0] + recursive_sum_of_an_array(arr[1..-1])
end

# p recursive_sum_of_an_array([1, 2, 3, 4]) #arr[0] = 1

def exp_v1(base, exp)
    return 1 if exp == 0
    base * exp_v1(base, exp - 1)  #matching data type
end

# p exp_v1(2, 1)  #2
# p exp_v1(2, 2)  #4 
# p exp_v1(2, 3)  #8 
# p exp_v1(2, 4)  #16

def exp_v2(base, exp)
    return 1 if exp == 0
    return base if exp == 1

    if n.even?
        exp_v2(base, exp / 2) ** 2
    #else
    end

end
#if base == 2, exp == 2
#base == 2, exp == 1

p exp_v2(2, 1)  #2
p exp_v2(2, 2)  #4 
p exp_v2(2, 3)  #8 
p exp_v2(2, 4)  #16