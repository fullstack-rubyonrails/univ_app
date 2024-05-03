class Course < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximun: 50}
  validates :short_name, presence: true, length: {minimum: 3, maximun: 15}
  validates :description, presence: true, length: {minimum: 15, maximun: 300}  
end