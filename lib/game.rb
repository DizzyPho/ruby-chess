class Game
	attr_accessor :board
	attr_reader :players
	
	def initialize(white_player,black_player)
		@players = {white: white_player, black: black_player}
		@board = Array.new()
		8.times {@board << Array.new(8)}
	end
	
	def to_s
		board.each do |row|
			row.each do |square|
				print square ?  "#{square}    " : '.    ' #prints a . if a square is empty, prints content of square if it isn't
			end
			puts "\n \n"	
		end 
	end 
	
end

b = Game.new('foo','bar')

b.board[2][1] = 'R'


puts b
