class Event < ApplicationRecord
	validates_presence_of :name,:fest_id,:entry_fee,:location,:start_datetime,:end_datetime
end
