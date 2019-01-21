class Player < ApplicationRecord
  has_many :drafts
  has_many :teams, through: :drafts
end
