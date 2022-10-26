arr = [1,2,3,4,5,6]
array =[]
def sum (arr)
  if arr.count > 0
     arr.sum
  else 
     0
  end
end 
puts sum (arr)

def  add (array)
    array.inject(0){|sum,x| sum + x}
end 
puts add(array)
