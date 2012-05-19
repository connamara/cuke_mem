require File.expand_path("../../cuke_mem", __FILE__)

After do
  CukeMem.forget
end
