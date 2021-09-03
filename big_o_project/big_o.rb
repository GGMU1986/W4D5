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

def largest_continuous_subsum(list)
    subs = []

    (0...list.length).each do |i|
        (i...list.length).each do |j|
            subs << list[i..j]
        end
    end
    subs.map(&:sum).max
end
 list1 = [5, 3, -7]
 list2 = [2, 3, -6, 7, -6, 7]
 list3 = [-5, -1, -3]

 p largest_continuous_subsum(list3)
 p largest_continuous_subsum(list2)
 p largest_continuous_subsum(list1)
