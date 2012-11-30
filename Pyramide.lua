function area(size)
		turtle.up()
		for d=1,size,1 do
			legeReihe(size)
			if d % 2 == 0 then
				turtle.turnLeft()
				turtle.forward()
				turtle.turnLeft()
				turtle.forward()
			else
				turtle.turnRight()
				turtle.forward()
				turtle.turnRight()
				turtle.forward()
			end
			
		end
	end

function legeReihe(length)
	for i= 1,length,1 do
		placeDown()
		turtle.forward()
	end
end

function placeDown()
	for i=1,16,1 do
		if turtle.getItemCount(i) > 0 then
			turtle.select(i)
			break
		end
	end
	turtle.placeDown()
end



function pyramide(size)
	for i=size,1,-2 do
		area(i)
		turtle.turnRight()
		turtle.forward()
		turtle.forward()
		turtle.turnLeft()
		turtle.forward()
	end
end

local tArgs = {...}
local mySize = tArgs[1]
pyramide(mySize)

