# iterate over the input and the key on the same indexes
# subtract the key's integer value from the input's ascii 
# value on each index and convert it back to a character.
# return the decoded variable.
def decode(input, key)
  decoded = ""

  for i in 0...input.length
    decoded += (input[i].ord - Integer(key[i])).chr
  end

  return decoded
end

puts decode(ARGV[0], ARGV[1])