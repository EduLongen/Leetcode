def longest_palindrome(s)
  return s if s.length <= 1

  return s if s.chars.uniq.length == 1

  transformed_string = "^|" + s.chars.join("|") + "|$"
  l = transformed_string.length
  arr = Array.new(l, 0)
  center = 0
  right = 0
  max_length = 0
  max_center = 0

  (1...l-1).each do |i|
    mirror = 2 * center - i

    arr[i] = [right - i, arr[mirror]].min if i < right

    while transformed_string[i + 1 + arr[i]] == transformed_string[i - 1 - arr[i]]
      arr[i] += 1
    end

    if i + arr[i] > right
      center = i
      right = i + arr[i]
    end

    if arr[i] > max_length
      max_length = arr[i]
      max_center = i
    end
  end

  start = (max_center - max_length) / 2
  s[start, max_length]
end
