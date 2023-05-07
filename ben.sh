#for ((i = 1; i<=10; i++)); do if [ $i -gt 3 ]; then echo $i; fi; done
cat <<COMMENT

#Fizzbuzz 
for i in {1..50}
 do 
    if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -eq 0 ]
       then
           echo "FizzBuzz"
    elif [ $((i % 3)) -eq 0 ]
       then echo "Fizz"
    elif [ $((i % 5)) -eq 0 ]
       then echo "Buzz"
    else
        echo $i
   fi
done

#Profile Tracking
while true
 do
 read -p "Enter First name: " firstName
 read -p "Enter Last name: " lastName
 echo "Full Name: $firstName $lastName"
 read -p "Do you want to enter your detail again? [y/n] " choice 
 if [ $choice != y ]
 then
  break
   echo "Thanks a lot"
 fi
 done

COMMENT

#Generate random number beetween 0 - 100

random_num=$((RANDOM % 100 + 1))
chances=5
while [ $chances -gt 0 ]
do
((chances--))
   read -p "Enter guess: " guess
   if [ $guess -eq $random_num ]
      then
        echo "Win"
   elif  [ $guess -lt $random_num ]
      then
       echo "Too Low"
  elif [ $guess -gt $random_num ]
      then
       echo "Too High"
  else
     echo "We are sorry!"
  fi
done
echo "The answer is: $random_num"
