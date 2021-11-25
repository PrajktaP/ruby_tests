x = [{a: 123}, {b: 234}, {c: 345}]
y = x.reduce(:merge)
# => {:a=>123, :b=>234, :c=>345} 
y.keys
# => [:a, :b, :c]
y.values
# => [123, 234, 345]
y.values.inject(:+)
# => 702
