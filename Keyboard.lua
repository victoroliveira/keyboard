if Keyboard then return end

local Public, Private = {}, {}
Keyboard = Public

local o = {}

function Public:new()
    o.x = 459
    o.y = 576
    o.img = canvas:new('images/ScreenShot.png')
    canvas:compose(o.x,o.y, o.img)
    canvas:flush()
end
