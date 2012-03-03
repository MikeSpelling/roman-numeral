Feature: Convert from numbers to roman numerals
  As an old man
  I want to convert standard numbers to roman numerals
  So that I can give an appearance of mystery to my numbers

  Scenario: Convert the number 1
    Given the number "1" has been entered
    When I convert
    Then the result is "I"

  Scenario: Convert the number 5
    Given the number "5" has been entered
    When I convert
    Then the result is "V"

  Scenario: Convert the number 10
    Given the number "10" has been entered
    When I convert
    Then the result is "X"

  Scenario: Convert the number 50
    Given the number "50" has been entered
    When I convert
    Then the result is "L"

  Scenario: Convert the number 100
    Given the number "100" has been entered
    When I convert
    Then the result is "C"

  Scenario: Convert the number 500
    Given the number "500" has been entered
    When I convert
    Then the result is "D"

  Scenario: Convert the number 1000
    Given the number "1000" has been entered
    When I convert
    Then the result is "M"

  Scenario: Convert the number 3
    Given the number "3" has been entered
    When I convert
    Then the result is "III"

  Scenario: Convert the number 4
    Given the number "4" has been entered
    When I convert
    Then the result is "IV"

  Scenario: Convert the number 8
    Given the number "8" has been entered
    When I convert
    Then the result is "VIII"

  Scenario: Convert the number 9
    Given the number "9" has been entered
    When I convert
    Then the result is "IX"

  Scenario: Convert the number 14
    Given the number "14" has been entered
    When I convert
    Then the result is "XIV"

  Scenario: Convert the number 47
    Given the number "47" has been entered
    When I convert
    Then the result is "XLVII"

  Scenario: Convert the number 99
    Given the number "99" has been entered
    When I convert
    Then the result is "XCIX"

  Scenario: Convert the number 499
    Given the number "499" has been entered
    When I convert
    Then the result is "CDXCIX"

  Scenario: Convert the number 919
    Given the number "919" has been entered
    When I convert
    Then the result is "CMXIX"

  Scenario: Convert the number 1498
    Given the number "1498" has been entered
    When I convert
    Then the result is "MCDXCVIII"

  Scenario: Convert the number 2345
    Given the number "2345" has been entered
    When I convert
    Then the result is "MMCCCXLV"

  Scenario: Convert the number 3999
    Given the number "3999" has been entered
    When I convert
    Then the result is "MMMCMXCIX"