class Game < ActiveRecord::Base
	belongs_to :map

  validates :level_id, presence: true 
  validates :username, presence: true
  validates :score, presence: true
end
