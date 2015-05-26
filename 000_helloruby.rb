class Greeter
  def initialize(name = 'World')
    @name = name
  end

  def say_hi
    puts "Hi #{@name}"
  end

  def say_hello
    puts "Hello, #{@name}!"
  end
end

greeter = Greeter.new('Inndy')
greeter.say_hi

greeter = Greeter.new
greeter.say_hello
