class Fixnum
  define_method(:gimme_ten) do
    10
  end
end

class Float
  define_method(:half) do
    self./2
  end
end

class Array
  define_method(:next_in_line) do
    self.push(self.shift())
  end
end

class Array
  define_method(:trim) do
    self.pop(self.shift())
  end
end
