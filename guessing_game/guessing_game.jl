num_rounds = 0

answer = rand(1:100)

println(answer, typeof(answer))

while (true) 
    global num_rounds += 1
    println("Please enter a guess:")
    guess = chomp(readline())
    guess = parse(Int, guess)
    if guess > answer
        println("You guessed $guess which is too high!")
    elseif guess < answer
        println("You guessed $guess which is too low!")
    else
        println("The answer was $guess. You won after $num_rounds rounds!")
        break
    end
end
