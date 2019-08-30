
def collatz(n)
  counter = 1
  seq = 0
  length = 0
  input = 0
  until counter > n do
    num = counter
      ray = [counter]    
      until num == 1 do 
        if num.even?
          num = num / 2
          ray << num
        else 
          num = num * 3 + 1
          ray << num
        end
      end

      if ray.length > length
        length = ray.length
        seq = ray.join(', ')
        input = counter
      end
      counter = counter + 1
  end
puts "#{input} has the longest Collatz sequence with a length of #{length}."
puts seq


end

collatz(1000000)

 