local RIGHT = "right"
local LEFT = "left"
local UP = "top"
local DOWN = "bottom"
local FRONT = "front"
local BACK = "back"

local modemDirection = BACK
local localId = os.getComputerID()
local padId = 1

if localId == padId then
    modemDirection = TOP
else
    modemDirection = BACK
end

if not rednet.isOpen(modemDirection) then
    rednet.open(modemDirection)
end

if localId == padId then
    rednet.receive()
else
    rednet.send(padId, "Test data")
end