list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
      # 1,2 
    #  min = -5 
def my_min(list)
    min = list.first
    list[1..-1].each do |ele|
        if min > ele
            min = ele
        end
    end
    min
end

p my_min(list)  # =>  -5