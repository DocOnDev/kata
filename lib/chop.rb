class Chop
  public
  def binary_chop(target=nil, search_array=[], start_index=0, end_index=search_array.size-1)
    split_index = (start_index + end_index) / 2
    return split_index if search_array[split_index] == target
    return -1 if start_index == split_index || end_index == split_index || search_array.size == 0
    return binary_chop(target, search_array, start_index, split_index-1) if target < search_array[split_index]
    return binary_chop(target, search_array, split_index+1, end_index) if target > search_array[split_index]
  end
end