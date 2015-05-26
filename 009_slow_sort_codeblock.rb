class Array
  def slowsort(&cmpr)
    narr = []
    self.map { |x| narr << x }
    for i in (1..narr.length)
      for j in (i+1..narr.length)
        if cmpr.call(narr[i-1], narr[j-1])
          narr[i-1], narr[j-1] = narr[j-1], narr[i-1]
        end
      end
    end
    narr
  end
end

puts [1,4,5,8,2,1,9,3,2,0].slowsort {|a,b| a > b}
