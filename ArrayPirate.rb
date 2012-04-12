
class Narr
  def self.[](index)
    Narr
  end
end

class NilClass
  def [](index)
    Narr
  end
end

# Usage:
#    >> [:array, :of, :valuable, :loot][7][99][-1]
#    => Narr
