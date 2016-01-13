cuke\_mem [![Build Status](https://travis-ci.org/connamara/cuke_mem.png?branch=master)](https://travis-ci.org/connamara/cuke_mem)
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

### More

Check out [specs](https://github.com/connamara/cuke_mem/blob/master/spec) and [features](https://github.com/connamara/cuke_mem/blob/master/features) to see all the ways you can use cuke\_mem.


Install
=======

```shell
gem install cuke_mem
```

or add the following to Gemfile: 

```ruby
gem 'cuke_mem'
```
and run `bundle install` from your shell.

More Information
================

* [Rubygems](https://rubygems.org/gems/cuke_mem)
* [Issues](https://github.com/connamara/cuke_mem/issues)
* [Connamara Systems](http://connamara.com)

Contributing
============

Please see the [contribution guidelines](https://github.com/connamara/cuke_mem/blob/master/CONTRIBUTION_GUIDELINES.md).

Credits
=======

Contributers:

* Chris Busbey

![Connamara Systems](http://www.connamara.com/wp-content/uploads/2016/01/connamara_logo_dark.png)

cuke\_mem is maintained and funded by [Connamara Systems, llc](http://connamara.com).

The names and logos for Connamara Systems are trademarks of Connamara Systems, llc.

Licensing
=========

cuke\_mem is Copyright © 2016 Connamara Systems, llc.

This software is available under the GPL and a commercial license.  Please see the [LICENSE](https://github.com/connamara/cuke_mem/blob/master/LICENSE.txt) file for the terms specified by the GPL license.  The commercial license offers more flexible licensing terms compared to the GPL, and includes support services.  [Contact us](mailto:info@connamara.com) for more information on the Connamara commercial license, what it enables, and how you can start developing with it.
