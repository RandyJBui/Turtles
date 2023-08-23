function sweep(x)
  while(x>0) do
    for j=0,3,1 do
      for i=0,x-1,1 do
        while(turtle.detect()) do
          turtle.dig()
        end
        turtle.digDown()
        turtle.forward()
        end
      turtle.turnLeft()
    end
    x = x-2
  end
end


sweep(4)
