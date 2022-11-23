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

def recurive_sum_of_an_array
end