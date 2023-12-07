def stock_picker(arr)
    buy = 0
    sell = 0
    profit = 0
    arr.each_with_index do |price, index|
        (index+1..arr.length-1).each do |i|
        if arr[i] - price > profit
            buy = index
            sell = i
            profit = arr[i] - price
        end
        end
    end
    [buy, sell]
end

