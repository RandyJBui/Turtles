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
    if x ~= x1 then
        turtle.forward()
        local x2,y2,z2 = gps.locate()
        turtle.back()

        while(x2 == x1) do
            turtle.turnLeft( )
            turtle.forward()
            x2,y2,z2 = gps.locate()
        end
        if( math.abs(x - x1) < math.abs(x - x2)) then
            turtle.turnLeft()
            turtle.turnLeft()
        end 
    end
end
function goZ(x,y,z)
    local x1,y1,z1 = gps.locate()
    if z ~= z1 then
        turtle.forward()
        local x2,y2,z2 = gps.locate()
        turtle.back()
        while(z2 == z1) do
            turtle.turnLeft( )
            turtle.forward()
            x2,y2,z2 = gps.locate()
        end
        if( math.abs(z - z1) < math.abs(z - z2)) then
            turtle.turnLeft()
            turtle.turnLeft()
        end 
    end
end
function goToStart(x,y,z)
   local x1,y1,z1 = gps.locate()
   if x1 == x and y1 == y and z1 == z then
        print("Here")
   else
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
            x1,y1,z1 = gps.locate()
        end
        goZ(x,y,z)
        while(z ~= z1) do
            turtle.forward()
            x1,y1,z1 = gps.locate()
        end
    end
end

local x,y,z = gps.locate()
goToStart(x,y,z)
