arr = "ab,cd,ef,gh,ij,kl,mn,op,qr,st,uv,wx,yz".split(',')

arr.each do |x|
  puts x
end

arr.reverse.each_with_index do |x, i|
  puts "#{i}. #{x}"
end

data = 'abcdefg'

new = ''
data.reverse.chars.each { |c| new << c }
puts new
