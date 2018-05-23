# "select the element out of the array if its index is a fibonacci number",

# fibonacci number is a number where the following number is the sum of the 2
# previous ones

# 1 2 => 3
# 2 3 => 5
# 3 5 => 8

# i need an array to keep the 2 previous numbers
# [1, 2]
# create an array of fibonacci numbers and compare the indexes to the array
# the array of fibonacci numbers shouldn't be bigger than the array size



def fibonaccis(size)
  fibos = [1, 2]
  idx = 0
  loop do
    fibos << fibos[idx, 2].sum
    idx += 1
    break if fibos.last >= size
    # i might need to change my break because it seems better to
    # check the last number of the fibonacci suite
  end
  fibos
end

p fibonaccis(5)


def select_fibonaccis(arr)
  # create an array of fibonaccis with the method i made, using arr.size as
  # argument

  # select with index the numbers whom index is included inside the fibonaccis
  # array

  fibs = fibonaccis(arr.size)
  p fibs
  arr.select.with_index { |_, idx| fibs.include?(idx) }
end

p select_fibonaccis(%w(a b c d e f g h k l m n o p))
p select_fibonaccis([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])
p select_fibonaccis((1..100).to_a)
p select_fibonaccis([])

