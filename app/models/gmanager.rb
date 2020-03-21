class Gmanager < ApplicationRecord
  # a general manager can have many managers
  has_many :managers
end
