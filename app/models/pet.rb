class Pet < ApplicationRecord
  # validations
  SPECIES = %w[dog cat rabbit bird]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
