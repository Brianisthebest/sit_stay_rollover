class Household

  def initialize(animals)
    @animals = animals
  end

  def animals_with_skill(skill)
    @animals.select do |animal|
      animal.skills.include?(skill)
    end
  end

  def no_party_tricks
    @animals.select do |animal|
      animal.skills.all? do |skill|
        skill.party_trick? != true
      end
    end
  end
end