class Lecture < ApplicationRecord
  has_many :assoziations
  has_many :categories, :through => :assoziations
  has_many :courses, :through => :assoziations
end
