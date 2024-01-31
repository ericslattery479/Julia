random = rand(1:100)
println("Guess a number between 1 and 100")
while true
    data = readline()
    if data == "";
        println("goodbye");
        break
    end
    guess = parse(Int64, data)
    if guess < random
        println("Too low")
    elseif guess > random
        println("Too high")
    else
        println("That's right!")
        break
end
end

# load program: include("C:/Users/slatt/Documents/JuliaGame.jl")