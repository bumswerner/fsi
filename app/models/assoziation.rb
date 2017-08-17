class Assoziation < ApplicationRecord
  belongs_to :course
  belongs_to :category
  belongs_to :lecture
end
