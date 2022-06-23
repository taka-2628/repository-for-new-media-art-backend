class Project < ActiveRecord::Base
  belongs_to :user
  
  has_many :comments
  has_many :genres
  has_many :technologies
end 