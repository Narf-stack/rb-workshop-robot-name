class Robot
  attr_reader :name
  @@names = Array.new

  def initialize()
    random_name
  end

  def reset
    random_name
  end

  def random_name
    # @name = ('AA000'..'ZZ999').to_a.sample(1).first
    @name = ('AA000'..'ZZ999').to_a.sample(1).first
    if @@names.any?{|name| name == @name}
      puts "Same name"
      random_name
    else
      @@names << @name
    end
  end

  def self.forget
  end
end

test = Robot.new
test.random_name