# Julia Mad Libs game adapted from: https://github.com/logankilpatrick/10-Julia-Projects-for-Beginners
# I added some small randomness to it by providing 2 other sentences.
# Randomness comes from the random seed based on the user inputs.
using Random
function play_mad_libs()
	print("Enter a verb (action): ")
	verb1 = readline()
	print("Enter an adjective (descriptive word): ")
	adj1 = readline()
	print("Enter a noun (person, place, or thing): ")
	noun1 = readline()
	print("Enter another noun (person, place, or thing): ")
	noun2 = readline()
	print("Enter a catchphrase (something like 'hands up!'): ")
	phrase1 = readline()
	+(a::String,b::String,c::String,x::String,y::String) = string(a,b,c,x,y)
	i = length(verb1+adj1+noun1+noun2+phrase1)
	Random.seed!(i)
	j = rand(1:3)
	if j == 1
		base_sentence = "John $verb1 down the street one night, playing with his $adj1 $noun1. When all of a
		sudden, a $noun2 jumped out at him and said '$phrase1'"
		elseif j == 2
		base_sentence = "Cooter $verb1 in the woods on a $adj1 day with his $noun1. On the hike, they ran into
		$noun2. Cooter then yelled $phrase1 at the bear and ran with his $noun1."
		else
		base_sentence = "A $adj1 $noun1 $verb1 into the lake. Then, a $noun2 came upon the lake and yelled $phrase1"
		end
	print("\n\n", base_sentence)
	end
play_mad_libs()
