class Array

  def my_uniq
    arr = []
    each do |el|
      arr << el unless arr.include?(el)
    end
    arr
  end

  def two_sum

    arr = []
    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length
        arr << [i, j] if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end
    arr
  end

  def my_transpose
    arr = []
    i = 0
    while i < self.length
      temp = []
      j = 0
      while j < self.length
        temp << self[j][i]
        j += 1
      end
      arr << temp
      i += 1
    end
    p arr
  end

end
