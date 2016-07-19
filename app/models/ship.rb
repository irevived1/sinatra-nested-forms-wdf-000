class Ship
	attr_accessor :name , :type, :booty, :pirate
	@@all = []
	def initialize(attribute)
		attribute.each do |k,v|
			self.send("#{k.to_s}=",v)
		end
		@@all << self
	end
	def self.all
		@@all
	end
	def self.clear
		@@all.clear
	end
end
