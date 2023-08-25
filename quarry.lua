args = {...}
x = args[1]
y = args[2]
z = args[3]
local Turt = require "dig.lua"

function refill(dimX,dimY,dimZ)
    if(Turt.needFuel()) then
        
        if(not turtle.refuel()) then
            Turt.goToStart(dimX,dimY,dimZ)
            while( not turtle.suck()) do
                turtle.turnLeft()
            end
            while(turtle.needFuel()) do
                turtle.suck()
                turtle.refill()
            end
        end
        return true
    end
    return false
end
function segment()
    local a,b,c = gps.locate()
    for i=0,x-1,1 do
        for j=0,z-1,1 do
            a,b,c = gps.locate()
            Turt.mine()
            turtle.forward()
        end
        turtle.turnLeft()
        turtle.mine()
        turtle.forward()
        turtle.turnLeft()
    end
end




dimX,dimY,dimZ = gps.locate()
projX = dimX + x
projY = dimY - y
projZ = dimZ + z
x1,y1,z1 = gps.locate()

