class Faculty < ApplicationRecord
    # set the assoziation between Faculty and Course --> 1 : N
    has_many :courses
    validates :name, presence: true
    validates :symbol, presence: true
    validates :description, presence: true
end
