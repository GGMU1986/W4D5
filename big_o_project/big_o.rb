list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
      # 1,2 
    #  min = -5 
def my_min(list)

    # phase 1
    # min = list.first
    # list.each_with_index do |ele_1, i_1|
    #     list.each_with_index do |ele_2, i_2|
    #         if i_2 != i_1
    #             if min > ele_2
    #                 min = ele_2
    #             end
    #         end
    #     end
    # end
    # min

    # phase 2
    min = list.first
    list[1..-1].each do |ele|
        if min > ele
            min = ele
        end
    end
    min
end

# p my_min(list)  # =>  -5

# def largest_continuous_subsum(list)
#     subs = []

#     (0...list.length).each do |i|
#         (i...list.length).each do |j|
#             subs << list[i..j]
#         end
#     end
#     subs.map(&:sum).max
# end
# O(n^2 + m)

# def largest_continuous_subsum(list)
    # i = 0
    # largest_sum = false
    # while i < list.length
    #     j = i
    #     while j < list.length
    #         curr_sum = list[i..j].sum
    #         if !largest_sum || curr_sum > largest_sum
    #             largest_sum = curr_sum
    #         end
    #         j += 1
    #     end
    #     i += 1
    # end
    # largest_sum
    
    
# end


# [5, 3, -7]
   
# max_sum = 5
# i = 3
# j = 4
# range_sum = 1
require "byebug"
def largest_continuous_subsum(list)
    max_sum = list.first
    range_sum = list.first #=> 
    i = 0 #=>1
    j = 0 #=>1
    debugger
    while j < list.length #=> 3
        # range_sum = list[i..j]
        if max_sum <= range_sum || i == j
            j += 1
            range_sum += list[j] unless j > list.length - 1
            max_sum = range_sum if range_sum > max_sum
        else
            range_sum -= list[i]
            i += 1
            max_sum = range_sum unless max_sum > range_sum
        end
    end
    max_sum
end

list1 = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]

# p largest_continuous_subsum(list3)
p largest_continuous_subsum(list2)
# p largest_continuous_subsum(list1)