def caeser_cypher(string,number,result='')
  string.bytes.each do |value|
    if value.between?(65,90) or value.between?(97,122)
      base = value < 91 ? 65 : 97;
      value = value-base
      value = (value+number)%26
      value = value + base
      result+=value.chr
    else
      result += value.chr
    end
    
  end
  result
end
p caeser_cypher("What a string!",5)
