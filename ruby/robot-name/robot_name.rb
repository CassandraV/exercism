class Robot
  @@names = []
  def initialize
    @robot_name = [*('A'..'Z')].sample(2).join + rand(100..999).to_s
    while @@names.include?(@robot_name)
      @robot_name = [*('A'..'Z')].sample(2).join + rand(100..999).to_s
    end
    @@names << @robot_name
  end

  def name
    @robot_name
  end

  def reset
    old_name = @robot_name
    @robot_name = [*('A'..'Z')].sample(2).join + rand(100..999).to_s unless @robot_name != old_name
  end
end

module BookKeeping
  VERSION = 2
end
