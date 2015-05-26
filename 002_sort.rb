def my_sort!(list, comp) # do bubble sort
  l = list.length

  for i in (0...l)
    for j in (i+1...l)
      print "compare #{i}..#{j} ... "
      if comp.call(list[i], list[j]) == 1
        puts "swap!"
        list[i], list[j] = list[j], list[i]
      else
        puts"no..."
      end
    end
  end
end

def my_cmp(a, b)
  a <=> b
end

lists = [ "Irene", "Annie", "Inndy", "Linroex", "JohnDoe", "Test" ]

my_sort! lists, method(:my_cmp)
puts(lists)

#lists.sort! { | first, second | first <=> second }

#print(lists)

def s(l, rev = false)
  l.sort!
  if rev
    l.reverse!
  end
end

arr = Array(1..9).shuffle!
print(arr)
s(arr)
puts
print(arr)
s(arr, true)
puts
print(arr)
