#write your code here
def echo input
  input
end

def shout input
  input.upcase
end

def repeat input, num_of_times=2
  num_of_times -= 1
  final = input
  num_of_times.times do
    final += " " + input.to_s
  end
  final
end

def start_of_word input, num_letters=1
  input[0..num_letters-1]
end

def first_word input
  arr = input.split
  arr[0]
end

def titleize input
  arr = input.split
  iterator = 1
  final = arr[0].capitalize
  while iterator < arr.size
    if arr[iterator] != "and" && arr[iterator] != "over" && arr[iterator] != "the"
      arr[iterator] = arr[iterator].capitalize
    end
    final += " " + arr[iterator]
    iterator+=1
  end
  final
end
