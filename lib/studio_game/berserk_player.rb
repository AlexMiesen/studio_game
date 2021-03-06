require_relative 'player'
module StudioGame
	class BerserkPlayer < Player
		def initialize(name, health=100)
			super(name, health)
			@w00t_count = 0 
		end 

		def berserk?
			@w00t_count > 5
		end

		def w00t
			super
			@w00t_count += 1
			if berserk?
				puts "#{@name} is berserk!"
			end
		end

		def blam
			if berserk?
				w00t
			else
				super
			end
		end

		# or use this
		# def blam
		# 	berserk? ? w00t : super
		# end
	end 

	if __FILE__ == $0
		berserker = BerserkPlayer.new("berserker", 50)
		6.times { berserker.w00t }
		2.times { berserker.blam }
		puts berserker.health
	end
end