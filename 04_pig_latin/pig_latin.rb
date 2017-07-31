#write your code here
def translate input
  arr = input.split
  final = ""
  iterator = 0
  while iterator < arr.size
    to_translate = arr[iterator]
    letters_to_move = ""
    while !isVowel?(to_translate[0])
      if to_translate[0..1] == "qu"
        letters_to_move += to_translate[0..1]
        to_translate = to_translate[2..to_translate.size-1]
      else
        letters_to_move += to_translate[0]
        to_translate = to_translate[1..to_translate.size-1]
      end
    end
    to_translate += letters_to_move + "ay"
    arr[iterator] = to_translate
    final += arr[iterator] + " "
    iterator += 1
  end
  final = final[0..final.size-2]
  final
end

def isVowel? letter
  if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" || letter == "y"
    true
  else
    false
  end
end
