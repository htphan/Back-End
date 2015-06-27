class Map < ActiveRecord::Base
	has_many :blocks
	has_many :games
	has_one :project
end
