local RIGHT = "right"
local LEFT = "left"
local UP = "top"
local DOWN = "bottom"
local FRONT = "front"
local BACK = "back"

if rednet.isOpen(BACK) then
    print("Show stuff for mobile computer")
else
    rednet.open(BACK)