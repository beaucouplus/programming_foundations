unconnected_numbers = ["1 2","1 3","2 3","3 4","4 2"]
unconnected_numbers_2 = ["9 7", "1 1", "5 7", "6 5", "10 2", "5 2", "3 10", "4 3", "10 8", "10 10", "2 10", "7 1", "2 3", "4 10", "7 8", "3 4", "10 7", "3 1", "6 1", "1 7", "8 3", "4 6", "1 6", "6 3", "9 4"]
unconnected_numbers_3 = ["5 5", "9 1", "4 1", "6 7", "10 9", "7 9", "1 4", "1 9", "9 4", "1 8", "7 3", "7 7", "1 7", "1 1", "10 1", "5 1", "3 5", "8 6", "9 5", "3 3", "3 9"]

connected_numbers = ["1 2","2 3", "3 1"]
bigger_connected_numbers = ["1 2","2 3","2 4","4 5","5 3","3 1","1 4"]
connected_numbers_3 = ["1 2", "10 5", "9 1", "9 4", "6 4", "7 6", "6 7", "3 9", "10 9", "7 2", "2 8", "2 1", "1 8", "8 2", "1 1", "3 1", "4 7", "6 3", "4 4", "4 5", "2 10", "5 7", "5 2", "2 7", "5 10", "9 9", "1 6"]

def check_if_all_connect(arr)
  candidate_arr = create_ints_from_str(arr)

  sources = candidate_arr.map { |sub_arr| sub_arr.first }
  destinations = candidate_arr.map { |sub_arr| sub_arr.last }
 
  connected = sources.uniq.sort == destinations.uniq.sort
  connected ? '1' : '0'
end


def create_ints_from_str(arr)
  arr.map { |item| item.split.map(&:to_i) }
end
puts '---- connected ----'
p check_if_all_connect(connected_numbers)
p check_if_all_connect(connected_numbers_3)
p check_if_all_connect(bigger_connected_numbers)
puts '----- unconnected ----'
p check_if_all_connect(unconnected_numbers)
p check_if_all_connect(unconnected_numbers_2)
p check_if_all_connect(unconnected_numbers_3)