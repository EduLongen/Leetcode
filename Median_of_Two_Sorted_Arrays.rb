# Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
#
# The overall run time complexity should be O(log (m+n)).
#
# Example 1:
#
# Input: nums1 = [1,3], nums2 = [2]
# Output: 2.00000
# Explanation: merged array = [1,2,3] and median is 2.
# Example 2:
#
# Input: nums1 = [1,2], nums2 = [3,4]
# Output: 2.50000
# Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
#
# Constraints:
#
# nums1.length == m
# nums2.length == n
# 0 <= m <= 1000
# 0 <= n <= 1000
# 1 <= m + n <= 2000
# -106 <= nums1[i], nums2[i] <= 106

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}

def find_median_sorted_arrays(nums1, nums2)

  sorted = (nums1 + nums2).sort
  count = sorted.count

  if count % 2 == 0
      first_half = (sorted[0...(count/2)])
      second_half = (sorted[(count/2)..-1])

      first_median = first_half[-1]
      second_median = second_half[0]

      median = ((first_median + second_median).to_f / 2.to_f)

  else
      median = sorted[(count/2).floor]
      median
  end
end
