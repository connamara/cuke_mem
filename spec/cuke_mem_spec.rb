require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe CukeMem do

  it "has a memory" do
    CukeMem.memory.should=={}
  end

  it "memorizes strings" do
    CukeMem.memorize(:key, "value")
    CukeMem.memory.should == {:key=>"value"}
  end

  it "symbolizes keys" do
    CukeMem.memorize("key", "value")
    CukeMem.memory.should == {:key=>"value"}
  end

  it "regurgitates unremembered strings" do
    CukeMem.remember("foo%{bar}").should == "foo%{bar}"
  end

  it "remembers strings" do
    CukeMem.memorize(:bar, "baz")
    CukeMem.remember("foo%{bar}").should=="foobaz"
  end

  it "forgets" do
    CukeMem.memorize(:key, "value")
    CukeMem.forget
    CukeMem.memory.should=={}
  end
end
