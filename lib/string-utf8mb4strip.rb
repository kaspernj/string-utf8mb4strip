class String
  def utf8mb4strip
    newstr = ""
    
    self.each_char do |char|
      byte = char.bytes.first
      
      if byte < 240
        newstr << char
      end
    end
    
    return newstr
  end
end