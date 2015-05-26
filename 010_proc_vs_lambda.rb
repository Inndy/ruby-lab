def proc_test
  puts "proc_test"
  mproc = Proc.new { return 1 }
  mproc.call()
  puts "Python"
end

def lambda_test
  puts "lambda_test"
  lambda = lambda { return 1 }
  lambda.call()
  puts "Python"
end

puts "run -> proc_test"
puts "return -> #{proc_test}"
puts ""

puts "run -> lambda_test"
puts "return -> #{lambda_test}"
puts ""
