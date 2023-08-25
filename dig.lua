function mine()
    while(turtle.detect()) do
        turtle.dig()
    end
end


function needFuel()
    if(turtle.getFuelLevel() < 800) then
        return true
    else
        return false
    end

end
function goX(x,y,z)
    local x1,y1,z1 = gps.locate()
    turtle.forward()
    local x2,y2,z2 = gps.locate()
    while(x2 == x1) do
        turtle.turnLeft( )
        turtle.forward()
        x2,y2,z2 = gps.locate()
    end
    if(x - x1 < x - x2) then
        turtle.turnLeft()
        turtle.turnLeft()
    end 
end
function goZ(x,y,z)
    local x1,y1,z1 = gps.locate()
    turtle.forward()
    local x2,y2,z2 = gps.locate()
    while(z2 == z1) do
        turtle.turnLeft( )
        turtle.forward()
        x2,y2,z2 = gps.locate()
    end
    if(z - z1 < z - z2) then
        turtle.turnLeft()
        turtle.turnLeft()
    end 
end
function goToStart(x,y,z)
   local x1,y1,z1 = gps.locate()
   goX(x,y,z)
    while(x ~= x1) do
        turtle.forward()
        x1,y1,z1 = gps.locate()
    end
    while(y ~= y1) do
        if(y - y1 > 0) then
            turtle.up()
        end
        if(y - y1 < 0) then
            turtle.up()
        end
    end
    goZ(x,y,z)
    while(z ~= z1) do
        turtle.forward()
        x1,y1,z1 = gps.locate()
    end

end

local x,y,z = gps.locate()
for i =0,5,1 do
turtle.forward()
end
turtle.turnLeft()
for i =0,3,1 do
    turtle.forward()
end

gotoStart(x,y,z)
