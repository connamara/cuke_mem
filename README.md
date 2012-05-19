cuke mem
--------

A very simple memory bank for cucumber tests

Allows you to write features like

```cucumber
Feature: I can store and recall stuff
  Scenario: Obligatory Hello World
    Given my data is "World"
    And I keep my data as "VAR"
    When I swizzle my data
    Then my data should be "Hello %{VAR}"
```

Usage
=====

Include ```require 'cuke_mem/cucumber'``` in your ```features/support/env.rb```

Then you can do

```ruby
Given /^my data is "(.*)"$/ do |data|
  @my_data = data
end

Given /^I keep my data as "(.*)"$/ do |var|
  CukeMem.memorize var, @my_data
end

When /^I swizzle my data$/ do
  @my_data="Hello #{@my_data}"
end

Then /^my data should be "(.*)"/ do |key|
  @my_data.should == CukeMem.remember(key)
end
```
