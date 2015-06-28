class Game < ActiveRecord::Base
	belongs_to :map

  validates :level_id, presence: true 
  validates :username, uniqueness: true, presence: true
  validates :score, presence: true
end
