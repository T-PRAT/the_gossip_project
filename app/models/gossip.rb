class Gossip < ApplicationRecord
	belongs_to :user, optional: true
end
