
class Animal
attr_reader :name, :type, :skills, :animal

  def initialize(animal)
      @name = animal[:name]
      @type = animal[:type]
      @skills = animal[:skills]
  end
 
  def forget_skill(lost_skill)
    skills.delete(lost_skill)
  end

  def number_of_party_tricks
    @skills.count do |skill|
      skill.party_trick?
    end
  end

  def categorize_commands
    expected = Hash.new
    expected[:party_tricks] = @skills.select { |skill| skill.party_trick? }
    expected[:not_party_tricks] = @skills.select { |skill| skill.party_trick? != true}
    expected
  end
end