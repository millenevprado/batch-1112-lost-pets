module PetsHelper
  def emoji(pet)
    case pet.species
    when 'dog'
      '🐕'
    when 'cat'
      '🐈'
    when 'bird'
      '🐦'
    when 'rabbit'
      '🐇'
    end
  end
end
