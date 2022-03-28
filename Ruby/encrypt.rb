# iterate over the input and convert each char to it's ascii value,
# add a random generated integer to it and convert the result back to a char.
# append the generated number to the key variable and append the result 
# to the encryptedValue var. return the encryptedValue and the key.
def encrypt(input)
  key = ""
  encryptedValue = ""

  for i in 0...input.length
    if input[i] == " "
      encryptedValue += " "
      key += "0"
    else
      num = rand(0...5)
      encryptedValue += (input[i].ord + num).chr
      key += String(num)
    end
  end

  return encryptedValue, key
end

val, key = encrypt(ARGV[0])

puts val, "code: " + key