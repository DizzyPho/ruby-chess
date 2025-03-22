class Board
	attr_accessor :rows_and_files
	attr_reader :players
	
	def initialize(white_player,black_player)
		@players = {white: white_player, black: black_player}
		@rows_and_files = Array.new()
		8.times {@rows_and_files << Array.new(8)}
	end
	
	def to_s
		rows_and_files.each do |row|
			row.each do |square|
				print square ?  "#{square}    " : '.    ' #prints a . if a square is empty, prints content of square if it isn't
			end
			puts "\n \n"	
		end 
	end 
	
end

b = Board.new('foo','bar')

b.rows_and_files[2][1] = 'R'


puts b
