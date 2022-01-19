###############################################################

start = 0
while start < 4
	score = (w,l,t)
	print("Welcome to a game of Rock, Paper, Scissors, Lizard, Spock!\n
	Enter game type: \n1 for Player vs. Computer \n2 for Computer vs. Computer \n3 for Player vs. Player \n4 to Quit\n")
	data = readline()
	start = parse(Int64,data)
	if start == 1
		w,l,t = 0,0,0
		while w < 99
		score = (w,l,t)
		print("\nScore: $score\n")
		v1 = "Rock"
		v2 = "Paper"
		v3 = "Scissors"
		v4 = "Lizard"
		v5 = "Spock"
	
		c_select = rand((v1,v2,v3,v4,v5))
		print("Please select $v1, $v2, $v3, $v4, or $v5.\n")
		h_select = string(readline()) |> lowercase |> titlecase
	
		print("$v1,")
		sleep(0.5)
		print(" $v2,")
		sleep(0.5)
		print(" $v3,")
		sleep(0.5)
		print(" $v4")
		sleep(0.5)
		print(" $v5,")
		sleep(0.5)
		print(" Shoot!\n")
	
		# check yours and computers entry for outcome: Win, Lose, Tie.
		if h_select == v1 && c_select == v1
			println("You both picked $v1. It's a tie!")
			t += 1
		elseif h_select == v1 && c_select == v2
			println("$v2 covers $v1. You lose!")
			l += 1
		elseif h_select == v1 && c_select == v3
			println("$v1 crushes $v3. You win!")
			w += 1
		elseif h_select == v1 && c_select == v4
			println("$v1 crushes $v4. You win!")
			w += 1
		elseif h_select == v1 && c_select == v5
			println("$v5 vaporizes $v1. You lose!")
			l += 1
		elseif h_select == v2 && c_select == v1
			println("$v2 covers $v1. You win!")
			w += 1
		elseif h_select == v2 && c_select == v2
			println("You both picked $v2. It's a tie!")
			t += 1
		elseif h_select == v2 && c_select == v3
			println("$v3 cuts $v2. You lose!")
			l += 1
		elseif h_select == v2 && c_select == v4
			println("$v4 eats $v2. You lose!")
			l += 1
		elseif h_select == v2 && c_select == v5
			println("$v2 disproves $v5. You win!")
			w += 1
		elseif h_select == v3 && c_select == v1
			println("$v1 smashes $v3. You lose!")
			l += 1
		elseif h_select == v3 && c_select == v2
			println("$v3 cuts $v2. You win!")
			w += 1
		elseif h_select == v3 && c_select == v3
			println("You both picked $v3. It's a tie!")
			t += 1
		elseif h_select == v3 && c_select == v4
			println("$v3 decapitates $v4. You win!")
			w += 1
		elseif h_select == v3 && c_select == v5
			println("$v5 smashes $v3. You lose!")
			l += 1
		elseif h_select == v4 && c_select == v1
			println("$v1 crushes $v4. You lose!")
			l += 1
		elseif h_select == v4 && c_select == v2
			println("$v4 eats $v2. You win!")
			w += 1
		elseif h_select == v4 && c_select == v3
			println("$v3 decapitates $v4. You lose!")
			l += 1
		elseif h_select == v4 && c_select == v4
			println("You both picked $v4. It's a tie!")
			t += 1
		elseif h_select == v4 && c_select == v5
			println("$v4 poisons $v5. You win!")
			w += 1
		elseif h_select == v5 && c_select == v1
			println("$v5 vaporizes $v1. You win!")
			w += 1
		elseif h_select == v5 && c_select == v2
			println("$v2 disproves $v5. You lose!")
			l += 1
		elseif h_select == v5 && c_select == v3
			println("$v5 smashes $v3. You win!")
			w += 1
		elseif h_select == v5 && c_select == v4
			println("$v4 poisons $v5. You lose!")
			l += 1
		elseif h_select == v5 && c_select == v5
			println("You both picked $v5. It's a tie!")
			t += 1
		else
		break
		end
		sleep(0.5)
		end
	end
	if start == 2
		
		cpu1_w,cpu1_l,cpu1_t = 0,0,0
		cpu2_w,cpu2_l,cpu2_t = 0,0,0
		
		cpu1_score = (cpu1_w,cpu1_l,cpu1_t)
		cpu2_score = (cpu2_w,cpu2_l,cpu2_t)
		
		while cpu1_w < 99 && cpu2_w < 99
		print("\nScores: \n$cpu1_score \n$scpu2_score \n")
		
		v1 = "Rock"
		v2 = "Paper"
		v3 = "Scissors"
		v4 = "Lizard"
		v5 = "Spock"
		cpu1 = "CPU1"
		cpu2 = "CPU2"
		
		c1_select = rand((v1,v2,v3,v4,v5))
		c2_select = rand((v1,v2,v3,v4,v5))
	
		print("$v1,")
		sleep(0.5)
		print(" $v2,")
		sleep(0.5)
		print(" $v3,")
		sleep(0.5)
		print(" $v4")
		sleep(0.5)
		print(" $v5,")
		sleep(0.5)
		print(" Shoot!\n")
	
		# check computer entries for outcome: Win, Lose, Tie.
		if c2_select == v1 && c1_select == v1
			println("You both picked $v1. It's a tie!")
			cpu1_t += 1
			cpu2_t += 1
		elseif c2_select == v1 && c1_select == v2
			println("$v2 covers $v1. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v1 && c1_select == v3
			println("$v1 crushes $v3. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v1 && c1_select == v4
			println("$v1 crushes $v4. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v1 && c1_select == v5
			println("$v5 vaporizes $v1. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v2 && c1_select == v1
			println("$v2 covers $v1. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v2 && c1_select == v2
			println("You both picked $v2. It's a tie!")
			cpu1_t += 1
			cpu2_t += 1
		elseif c2_select == v2 && c1_select == v3
			println("$v3 cuts $v2. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v2 && c1_select == v4
			println("$v4 eats $v2. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v2 && c1_select == v5
			println("$v2 disproves $v5. You win!")
			w += 1
		elseif c2_select == v3 && c1_select == v1
			println("$v1 smashes $v3. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v3 && c1_select == v2
			println("$v3 cuts $v2. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v3 && c1_select == v3
			println("You both picked $v3. It's a tie!")
			cpu1_t += 1
			cpu2_t += 1
		elseif c2_select == v3 && c1_select == v4
			println("$v3 decapitates $v4. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v3 && c1_select == v5
			println("$v5 smashes $v3. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v4 && c1_select == v1
			println("$v1 crushes $v4. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v4 && c1_select == v2
			println("$v4 eats $v2. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v4 && c1_select == v3
			println("$v3 decapitates $v4. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v4 && c1_select == v4
			println("You both picked $v4. It's a tie!")
			cpu1_t += 1
			cpu2_t += 1
		elseif c2_select == v4 && c1_select == v5
			println("$v4 poisons $v5. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v5 && c1_select == v1
			println("$v5 vaporizes $v1. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v5 && c1_select == v2
			println("$v2 disproves $v5. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v5 && c1_select == v3
			println("$v5 smashes $v3. $cpu2 wins!")
			cpu1_l += 1
			cpu2_w += 1
		elseif c2_select == v5 && c1_select == v4
			println("$v4 poisons $v5. $cpu1 wins!")
			cpu1_w += 1
			cpu2_l += 1
		elseif c2_select == v5 && c1_select == v5
			println("You both picked $v5. It's a tie!")
			cpu1_t += 1
			cpu2_t += 1
		end
		sleep(0.5)
		end
	end
	if start == 3
		
		p1_w,p1_l,p1_t = 0,0,0
		p2_w,p2_l,p2_t = 0,0,0
		
		p1_score = (p1_w,p1_l,p1_t)
		p2_score = (p2_w,p2_l,p2_t)
		
		while p1_w < 99 && p2_w < 99
		print("\nScores: \n$p1_score \n$p2_score \n")
		
		v1 = "Rock"
		v2 = "Paper"
		v3 = "Scissors"
		v4 = "Lizard"
		v5 = "Spock"
		p1 = "Player 1"
		p2 = "Player 2"
		
		print("$p1, please select $v1, $v2, $v3, $v4, or $v5.\n")
		p1_select = string(readline()) |> lowercase |> titlecase
		print("$p2, please select $v1, $v2, $v3, $v4, or $v5.\n")
		p2_select = string(readline()) |> lowercase |> titlecase

		print("$v1,")
		sleep(0.5)
		print(" $v2,")
		sleep(0.5)
		print(" $v3,")
		sleep(0.5)
		print(" $v4")
		sleep(0.5)
		print(" $v5,")
		sleep(0.5)
		print(" Shoot!\n")
	
		# check computer entries for outcome: Win, Lose, Tie.
		if p2_select == v1 && p1_select == v1
			println("You both picked $v1. It's a tie!")
			p1_t += 1
			p2_t += 1
		elseif p2_select == v1 && p1_select == v2
			println("$v2 covers $v1. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v1 && p1_select == v3
			println("$v1 crushes $v3. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v1 && p1_select == v4
			println("$v1 crushes $v4. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v1 && p1_select == v5
			println("$v5 vaporizes $v1. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v2 && p1_select == v1
			println("$v2 covers $v1. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v2 && p1_select == v2
			println("You both picked $v2. It's a tie!")
			p1_t += 1
			p2_t += 1
		elseif p2_select == v2 && p1_select == v3
			println("$v3 cuts $v2. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v2 && p1_select == v4
			println("$v4 eats $v2. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v2 && p1_select == v5
			println("$v2 disproves $v5. You win!")
			w += 1
		elseif p2_select == v3 && p1_select == v1
			println("$v1 smashes $v3. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v3 && p1_select == v2
			println("$v3 cuts $v2. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v3 && p1_select == v3
			println("You both picked $v3. It's a tie!")
			p1_t += 1
			p2_t += 1
		elseif p2_select == v3 && p1_select == v4
			println("$v3 decapitates $v4. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v3 && p1_select == v5
			println("$v5 smashes $v3. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v4 && p1_select == v1
			println("$v1 crushes $v4. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v4 && p1_select == v2
			println("$v4 eats $v2. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v4 && p1_select == v3
			println("$v3 decapitates $v4. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v4 && p1_select == v4
			println("You both picked $v4. It's a tie!")
			p1_t += 1
			p2_t += 1
		elseif p2_select == v4 && p1_select == v5
			println("$v4 poisons $v5. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v5 && p1_select == v1
			println("$v5 vaporizes $v1. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v5 && p1_select == v2
			println("$v2 disproves $v5. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v5 && p1_select == v3
			println("$v5 smashes $v3. $p2 wins!")
			p1_l += 1
			p2_w += 1
		elseif p2_select == v5 && p1_select == v4
			println("$v4 poisons $v5. $p1 wins!")
			p1_w += 1
			p2_l += 1
		elseif p2_select == v5 && p1_select == v5
			println("You both picked $v5. It's a tie!")
			p1_t += 1
			p2_t += 1
		else
		break
		end
		sleep(0.5)
		end
	end
end
