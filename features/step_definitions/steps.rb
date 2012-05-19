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

