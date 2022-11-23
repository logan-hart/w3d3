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

    if exp.even?
        var = exp_v2(base, exp / 2)
        var * var
    else
        var_2 = exp_v2(base, (exp-1)/2)
        base * (var_2 * var_2)
    end

end
#if base == 2, exp == 2
#base == 2, exp == 1

# p exp_v2(2, 1)  #2
# p exp_v2(2, 2)  #4 
# p exp_v2(2, 3)  #8 
# p exp_v2(2, 4)  #16

# [1,2,3,4]

def deep_dup(arr)  #1D array can be dup with the .dup method. Our parameter is nested array
    return [arr].dup if !arr.is_a?(Array)
    dd = []
    arr.each do |ele|
        if !ele.is_a?(Array) 
            dd += ele.dup + deep_dup(arr[1..-1])
        else

        end
    end
    dd
end

p deep_dup([[1], [[2], [3, 4]]])
p deep_dup([[1,2]])

# base case []
# 1 away from base [1]
# 2 levels away [[1,2]]
# example [[1], [[2], [3, 4]]]