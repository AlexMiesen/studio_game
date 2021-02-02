module StudioGame
	module Playable
		def blam
			self.health = self.health - 10
			puts "#{name} got blammed"
		end

		def w00t
			self.health += 15
			puts "#{name} got w00ted"
		end

		def strong?
			health > 100
		end

	end
end 

#self.name is optional because its only being used for read, same as health in strong?
#self.health needs self because it is writeable