# ==============================================================================
# KNOCK 7
# ==============================================================================
# Array#sum で各配列の値を加算し、その値を返すメソッドを作りなさい。
# ただし、数値以外の値が入ることも考慮すること。
# ------------------------------------------------------------------------------
# [1, 2, 3].sum #=> 6
# [1, 1.3, 2.2].sum #=> 4.5
# [1, 1.3, 2.2].sum #=> 4.5
# [1, 'a', 2.2].sum #=> 3.2

class Array
  def sum
    self
      .select{|item| [Fixnum, Float].include?(item.class)}
      .reduce(:+)
  end
end

p [1,'2',200,[]].sum