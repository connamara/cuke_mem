Feature: I can store and recall stuff
  Scenario: Obligatory Hello World
    Given my data is "World"
    And I keep my data as "VAR"
    When I swizzle my data
    Then my data should be "Hello %{VAR}"
