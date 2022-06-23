class Technology < ActiveRecord::Base
  has_many :project_technologies

  has_many :projects, through: :project_technologies
end 