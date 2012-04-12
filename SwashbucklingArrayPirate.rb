
  class Narr 
    def self.[](index)
      puts "Error: Narr, matey, there's no #{index} on Narr!"
      Narr.new(index)
    end
    
  
    def initialize(index=Narr, from=:narr_narr)
      if from == :narr_narr
        from = "not_an_array"
      end
    
      @tree = "#{from}[#{index}]"
    end

    def [](index)
      puts "Error: Narr, matey, there's no #{index} on this Narr!"
      @tree += "[#{index}]"
      self
    end

    def to_s
      "Instance of class Narr" " <#{@tree}>"
    end

  end
  
  class NilClass
  def [](index)
    puts "Error: nil[#{index}] makes no sense.  Returning Narr"
    Narr.new(index, "nil")
  end
  def self.[](index)
    puts "Error: NilClass[#{index}] makes no sense.  Returning Narr"
    Narr.new(index, "NilClass")
  end
  end

  