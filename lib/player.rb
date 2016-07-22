require_relative "pieces.rb"

class Player
	attr_accessor :name
	attr_reader :pieces, :from, :to, :white

	def initialize(white=false)
		@name = nil
		@white = white
		@pieces = { rook_1: Pieces::Rook.new(white),
					knight_1: Pieces::Knight.new(white),
					bishop_1: Pieces::Bishop.new(white),
					king: Pieces::King.new(white),
					queen: Pieces::Queen.new(white),
					bishop_2: Pieces::Bishop.new(white),
					knight_2: Pieces::Knight.new(white),
					rook_2: Pieces::Rook.new(white),
					pawn_1: Pieces::Pawn.new(white),
				    pawn_2: Pieces::Pawn.new(white),
				    pawn_3: Pieces::Pawn.new(white),
				    pawn_4: Pieces::Pawn.new(white),
				    pawn_5: Pieces::Pawn.new(white),
				    pawn_6: Pieces::Pawn.new(white),
				    pawn_7: Pieces::Pawn.new(white),
				    pawn_8: Pieces::Pawn.new(white)}
	end

	def get_name
		print "Enter Player's name: "
		@name = gets.chomp.downcase.capitalize
	end

	def make_move
		puts "\nEnter your move."
		print "From : "
		@from = gets.chomp.chars
		print "To   : "
		@to = gets.chomp.chars
		@from[1] = @from[1].to_i
		@to[1] = @to[1].to_i
	end
end