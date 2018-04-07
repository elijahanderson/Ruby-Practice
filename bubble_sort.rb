=begin
    Build a method #bubble_sort that takes an array and returns a sorted array.
=end

def bubble_sort(arr)
    while sorted(arr) == false
        for j in 0..(arr.length-2)
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    return arr
end

=begin
    create a similar method called #bubble_sort_by which sorts an array by
    accepting a block.
=end
def bubble_sort_by(arr)
    while sorted(arr) == false
        for j in 0..(arr.length-2)
            comparison = yield(arr[j], arr[j+1])
            if comparison > 0
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    return arr
end

# check if an array is sorted
def sorted(arr)
    return arr.each_cons(2).all? { |a, b| (a <=> b) <= 0}
end

sorted_arr = bubble_sort([4,3,78,2,0,2,34,100,6,5])
puts sorted_arr.to_s

s_arr = bubble_sort_by([4,3,78,2,0,2,34,100,6,5]) {|smaller,bigger| smaller <=> bigger}
puts s_arr.to_s
