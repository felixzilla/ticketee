class Project < ActiveRecord::Base
  attr_accessible :name

  #validations
  validates :name, :presence => true

end
