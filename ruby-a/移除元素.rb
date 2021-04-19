# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  if nums.length == 0 or nums.length == 1
    if nums.length == 0
      return 0
    else
      if nums[0]==val
        return 0
      else
        return 1
      end
    end
  else
    left = 0
    right = nums.length - 1
    while left != right
      if nums[left] == val
        if nums[right] != val
         nums[left] = nums[right]
         right -= 1
       else
         right -= 1
       end
     else
       left += 1
      end
    end  
    if nums[left] == val
      return left
    else
      return left+1
    end
  end
end