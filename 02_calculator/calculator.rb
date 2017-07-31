#write your code here
def add first, second
  first+second
end

def subtract first, second
  first - second
end

def sum array_of_nums
  total = 0
  iterator = 0
  while iterator < array_of_nums.size
    total = total + array_of_nums[iterator]
    iterator+=1
  end
  total
end

def multiply (*args)
  total = 1
  iterator = 0
  while iterator < args.size
    total *= args[iterator]
    iterator+=1
  end
  total
end

def power first, second
  first**second
end

def factorial num
  if num == 0
    1
  else
    num*factorial(num-1)
  end
end
