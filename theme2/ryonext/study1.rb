class String
  def verb_ing
    return self if self.length < 3
    return self + 'ly' if self[(self.length-3)..(self.length-1)] == 'ing'
    return self + 'ing'
  end
end

p 'hail'.verb_ing
p 'swimming'.verb_ing
p 'do'.verb_ing
