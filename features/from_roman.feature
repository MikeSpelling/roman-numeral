Feature: Convert from roman numerals to numbers
  As a modern human being
  I want to convert roman numerals to standard numbers
  So that I can read them

  Scenario: Convert the roman numeral I
    Given the numeral "I" has been entered
    When I convert
    Then the result is "1"

  Scenario: Convert the roman numeral V
    Given the numeral "V" has been entered
    When I convert
    Then the result is "5"

  Scenario: Convert the roman numeral X
    Given the numeral "X" has been entered
    When I convert
    Then the result is "10"

  Scenario: Convert the roman numeral L
    Given the numeral "L" has been entered
    When I convert
    Then the result is "50"

  Scenario: Convert the roman numeral C
    Given the numeral "C" has been entered
    When I convert
    Then the result is "100"

  Scenario: Convert the roman numeral D
    Given the numeral "D" has been entered
    When I convert
    Then the result is "500"

  Scenario: Convert the roman numeral M
    Given the numeral "M" has been entered
    When I convert
    Then the result is "1000"

  Scenario: Convert the roman numeral III
    Given the numeral "III" has been entered
    When I convert
    Then the result is "3"

  Scenario: Convert the roman numeral IV
    Given the numeral "IV" has been entered
    When I convert
    Then the result is "4"

  Scenario: Convert the roman numeral VIII
    Given the numeral "VIII" has been entered
    When I convert
    Then the result is "8"

  Scenario: Convert the roman numeral IX
    Given the numeral "IX" has been entered
    When I convert
    Then the result is "9"

  Scenario: Convert the roman numeral XXXIV
    Given the numeral "XXXIV" has been entered
    When I convert
    Then the result is "34"

  Scenario: Convert the roman numeral CXXIX
    Given the numeral "CXXIX" has been entered
    When I convert
    Then the result is "129"

  Scenario: Convert the roman numeral MMCDXLIV
    Given the numeral "MMCDXLIV" has been entered
    When I convert
    Then the result is "2444"

  Scenario: Convert the roman numeral MMMCCXXXIV
    Given the numeral "MMMCCXXXIV" has been entered
    When I convert
    Then the result is "3234"