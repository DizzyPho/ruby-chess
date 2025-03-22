require_relative 'piece'
class Rook < Piece 
	private	
	def illegal_move?(new_x,new_y)

		if new_x == posX || new_y == posY	
			super(new_x,new_y)
			 
		else return :illegal_move
		end
		
	end
	
	def to_s
		'R'
	end
end

r = Rook.new(1,2,'me')
puts r.posX
r.move(4,4)
puts r.posX
