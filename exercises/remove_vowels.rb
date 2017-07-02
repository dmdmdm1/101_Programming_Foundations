# Write a method that takes an array of strings, and returns an array of the
#same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(array)
  subarrays = array.map { |e| e.chars }
  consonants = subarrays.map do |s|
    s.reject { |c| c.match(/[aeiou]/i) }
  end
  consonants.map(&:join)
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# one liner
# array.map { |string| string.delete('aeiouAEIOU') }
