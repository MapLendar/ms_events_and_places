class Event < ApplicationRecord
	belongs_to :site
	 validates :name, presence: true
	 validates :name, :length => { :maximum => 45, :too_long => "%{count} Demasiados caracteres" }
	 validates :name, :length => { :minimum => 5, :too_short => "%{count} Muy pocos caracteres" }

	 validates :start_time, presence: true
	 validates :end_time, presence: true

end
