class Team < ApplicationRecord
  belongs_to :user
  has_many :drafts
  has_many :players, through: :drafts

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 25 }
  validates :hometown, presence: true
  validates :hometown, uniqueness: true
  validates :hometown, length: { maximum: 25 }

  def full_name
    "#{self.hometown} #{self.name}"
  end
end
