module CukeMem
  module Memory
    def memory
      @memory ||= {}
    end

    def memorize key, value
      memory[key.to_sym]=value
    end

    def remember phrase
      memory.empty? ? phrase : phrase % memory
    end

    def forget
      @memory={}
    end
  end
end
