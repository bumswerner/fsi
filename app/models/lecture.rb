class Lecture < ApplicationRecord
  has_many :assoziations
  has_many :categories, :through => :assoziations
  has_many :courses, :through => :assoziations
  has_many :connections
  has_many :materials, :through => :connections  
end
