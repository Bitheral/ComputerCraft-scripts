local RIGHT = "right"
local LEFT = "left"
local UP = "top"
local DOWN = "bottom"
local FRONT = "front"
local BACK = "back"

local modemDirection = BACK
local localId = os.getComputerID()
local padId = 1

if not localId == padId then
    rednet.send(padId, "Sending to pad")
end