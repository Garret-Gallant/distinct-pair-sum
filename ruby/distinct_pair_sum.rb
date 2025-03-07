def distinct_pair_sum(arr, k)
  matched_pairs = {}

  (0...(arr.length)).each do |i|
    next_value = arr[i + 1]

    if next_value + arr[i] == k && !matched_pairs.include?(next_value) && !matched_pairs.include?(arr[i])
      p next_value
      matched_pairs[arr[i]] = [arr[i], next_value]
      p matched_pairs
    end
  end
    matched_pairs.values
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [[1, 1], [2, 0]]"
  print "=> "
  print distinct_pair_sum([0, 1, 1, 2, 0, 1, 1], 2)

  puts

  puts "Expecting: [[2, 8]]"
  print "=> "  
  print distinct_pair_sum([3, 4, 2, 1, 5, 2, 8, 2], 10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# start with an empty object.
# if i and j sum to the target value.
#     create an array of max length of 2 per object key.
# once the array has been read completely and all pairs have been captured output each pair of values from the object.

# instead of a + b = x we should evaluate by using x - b = a 
