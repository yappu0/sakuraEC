class Administrator < ApplicationRecord
  devise :database_authenticatable, :rememberable, :validatable
end
