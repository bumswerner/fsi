class Category < ApplicationRecord
  has_many :assoziations
  has_many :lectures, :through => :assoziations
  has_many :courses, :through => :assoziations    
end
