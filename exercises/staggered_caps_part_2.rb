

# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

# Example:

def staggered_case(s)
  new_s = ""
  need_uppercase = true
  s.chars.each do |char|
    if char =~ /[a-z]/i
      need_uppercase ? new_s << char.upcase : new_s << char.downcase
      need_uppercase = !need_uppercase
    else
      new_s << char
    end
  end
  new_s
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
