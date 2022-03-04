# Spectral forecast for signals in Ruby
# Author: Dr. Paul A. Gagniuc
# Date:   01/02/2022

A = "10.3,23.4,44.8,63.2,44.1,35.1,46.5,62.6,50.4,28.9,24.7"
B = "18.8,43.1,52.2,45.5,46.8,46.6,67.9,66.3,70.4,62,39.7"
m = ""
    
tA = A.split(",")
tB = B.split(",")

maxA = tA.max.to_f
maxB = tB.max.to_f
maxAB = [maxA, maxB].max
    
d = 33
v = 0
    
for i in (0...tA.length)
    v = ((d / maxA) * (tA[i].to_f)) + (((maxAB - d) / maxB) * (tB[i].to_f))
    m += "#{v.round(2)}"
    if i < tA.length then m += "," end
end

puts "#{m}"