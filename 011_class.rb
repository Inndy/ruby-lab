class String
  def red
    "\e[1;31m#{self}\e[0m"
  end

  def green
    "\e[1;32m#{self}\e[0m"
  end

  def yellow
    "\e[1;33m#{self}\e[0m"
  end
end

class Integer
  def bar(n)
    p = self * 100 / n
    "[#{('=' * (p/5)).ljust(20)}] #{self.to_s.ljust(3)} / #{n.to_s.ljust(3)}"
  end
end

class Human
  def initialize(name='Human')
    @@count ||= 0
    @@count += 1
    @name = name
    @hp = self.full_hp
    @weapons = []
  end

  def self.count
    @@count
  end

  def equip(weapon)
    @weapons << weapon
  end

  def attack(target)
    for p in @weapons
      puts "#{@name} Use #{p.name} to attack #{target.name}"
      p.attack(target)
    end

    target.summorize
  end

  def hurt(damage)
    puts "#{@name} got #{damage} hurts!"
    @hp -= damage
  end

  def summorize
    puts "Name -> #{@name}, HP -> #{self.hp.bar(self.full_hp).red}"
  end

  def name
    "#{self.job} #{@name}"
  end

  def job
    '(Human)'
  end

  def hp
    @hp unless @hp > 0
    0 if @hp <= 0
  end

  def full_hp
    10
  end
end

class Weapon
  def initialize(name='Weapon', damage=1.0)
    @name = name
    @damage = damage
  end

  def attack(target)
    target.hurt(@damage)
  end

  def name
    @name
  end
end

class Student < Human
  def job
    'Student'
  end

  def full_hp
    15
  end
end

me = Student.new('Inndy')
other = Human.new('Someone')
me.equip(Weapon.new('MacBookAir', 13))
me.attack(other)
puts "Human.count = #{Human.count}"
