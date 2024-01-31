##### Chess game in Julia

# Define our constants 
const Pawn = Pawn
const Rook = Rook
const Knight = Knight
const Bishop = Bishop
const Queen = Queen
const King = King
const EMPTY = ' '

abstract type ChessException <: Exception end

struct InvalidValueException <: ChessException
	value::Char
end

struct InvalidMoveException <: ChessException
	msg::String
end

struct InvalidCoordException <: ChessException
	col::Int
	row::Int
end

# Defining pieces in chess
abstract type Piece end

struct Pawn <: Piece
	
end

struct Rook <: Piece
	
end

struct Knight <: Piece
	
end

struct Bishop <: Piece
	
end

struct Queen <: Piece
	
end

struct King <: Piece
	
end

# Defining Board and movement
struct Cell
  value::Char

  function Cell(v::Char)
    in(v, [Pawn, Rook, Knight, Bishop, Queen, King, ' ']) && return new(v)
    InvalidValueException(v) |> throw
  end
end
Cell() = Cell(EMPTY)

struct Board
  data::Matrix{Cell}
end
Board() = Board([ Cell() Cell() Cell() Cell() Cell() Cell() Cell() Cell();
                  Cell() Cell() Cell() Cell() Cell() Cell() Cell() Cell();
                  Cell() Cell() Cell() Cell() Cell() Cell() Cell() Cell();
				  Cell() Cell() Cell() Cell() Cell() Cell() Cell() Cell();
				  Cell() Cell() Cell() Cell() Cell() Cell() Cell() Cell();
				  Cell() Cell() Cell() Cell() Cell() Cell() Cell() Cell();
				  Cell() Cell() Cell() Cell() Cell() Cell() Cell() Cell();
				  Cell() Cell() Cell() Cell() Cell() Cell() Cell() Cell();
                ])
# Board is an 8x8 matrix
Base.show(io::IO, cell::Cell) = print(io, cell.value)
Base.show(io::IO, board::Board) = pretty_table(board.data, [A, B, C], hlines = [0,1,2,3,4], show_row_number = true)

==(a::Cell, b::Cell) = a.value == b.value
Base.hash(cell::Cell) = hash(cell.value)

function at(board::Board, coords::Pair{Int,Int}) :: Cell
  if ! isvalidcolumn(coords[1]) || ! isvalidrow(coords[2])
    InvalidCoordinatesException(coords[1], coords[2]) |> throw
  end

  board.data[coords[2], [coords[1]]]
end