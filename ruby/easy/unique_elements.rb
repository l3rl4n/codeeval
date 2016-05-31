# You are given a sorted list of numbers with duplicates. 
# Print out the sorted list with duplicates removed.

File.open(ARGV[0]).each_line do |line|
    arr = []
    line.split(',').each do |entry|
    	arr << entry.gsub("\n",'') unless arr.include?(entry)
    end
    arr = arr[0..-2] if arr[-1] == arr[-2]
    puts arr.join(',')
end

# Input:
# 15,16,17,17,17,18,19,20,20,21
# 10,11,11,12,13,13,13,14
# 15,16,17,18,19,20,21
# 10,11,12,13,14
# 5,6,7,7,8,9,10,10
# 9,10,11,12,12,13,14,15
# 13,13,14,14,15,16,17,18,18,18,19,19
# 7,8,9,10,10,10,11,12,13,14,15,16
# 9,10,10,11,11,12,12,12,13,14,15
# 1,1,1,2,2,3,3,4,4
# 15,16,16,17,18,19,20,20,21,22,23,23
# 12,13,13,14,15,16,17,18,19,19,20,21
# 2,3,4,5,5
# 14,15,16,16,16,17,17,18,19
# 11,11,12,13,14,14,15,16,17
# 2,2,2,2,2
# 13,13,13,13,13,14,15,15,16,17,18
# 1,2,3,4
# 13,13,14,15,16,16,17,18,18,19,20,21
# 9,10,11,11,12,12,13,14,15

# Output:
# 15,16,17,18,19,20,21
# 10,11,12,13,14
# 15,16,17,18,19,20,21
# 10,11,12,13,14
# 5,6,7,8,9,10
# 9,10,11,12,13,14,15
# 13,14,15,16,17,18,19
# 7,8,9,10,11,12,13,14,15,16
# 9,10,11,12,13,14,15
# 1,2,3,4
# 15,16,17,18,19,20,21,22,23
# 12,13,14,15,16,17,18,19,20,21
# 2,3,4,5
# 14,15,16,17,18,19
# 11,12,13,14,15,16,17
# 2
# 13,14,15,16,17,18
# 1,2,3,4
# 13,14,15,16,17,18,19,20,21
# 9,10,11,12,13,14,15