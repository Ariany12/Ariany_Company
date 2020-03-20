class Manager < ApplicationRecord
  # a manager can have many funcionarios
  has_many: funcionarios
  # a  manager can only have 1 general manager 
  belongs_to: g_manager
end
