class RomanToNum
  CONVERSION_TABLE = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }

  def initialize(roman_number)
    @roman_number = roman_number
  end


  def convert
    # get input as an array
    roman_letters = @roman_number.chars.to_a
    case
    # If no letters = 0
    when roman_letters.empty? then 0
    # If just 1 roman letter, get the correct value in the conversion table
    when roman_letters.size == 1 then CONVERSION_TABLE[roman_letters[0].to_sym]
    else
      compute_sum(roman_letters)
    end
  end

  private

  def compute_sum(roman_letters)
    arabic_number = 0
    roman_letters.each_with_index do |letter, index|
      converted_letter = CONVERSION_TABLE[letter.to_sym]
      # Only when the letter is not the last one
      unless index == roman_letters.size - 1
        # If there is a smaller letter before a bigger one, count the bigger one minus the smaller one, else, count it as normal
        converted_letter < CONVERSION_TABLE[roman_letters[index + 1].to_sym] ? arabic_number -= converted_letter : arabic_number += converted_letter
      else
        arabic_number += converted_letter
      end
    end
    arabic_number
  end
end
