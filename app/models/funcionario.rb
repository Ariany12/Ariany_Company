class Funcionario < ApplicationRecord
  #each funcionario can have only one manager
  belongs_to :manager
end
