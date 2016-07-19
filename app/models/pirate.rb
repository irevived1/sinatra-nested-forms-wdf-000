class Pirate
	attr_accessor :name , :weight, :height
	attr_reader :ships
	@@all = []
	def initialize(attribute)
		attribute.each do |k,v|
			self.send("#{k.to_s}=",v) 
		end
		@@all << self
	end
	def ships=(array)
		@ships = []
		array.each do |x|
			tmp = Ship.new(x)
			tmp.pirate = self
			@ships << tmp
		end
	end
	def self.all
		@@all
	end
	def self.clear
		@@all.clear
	end
end
