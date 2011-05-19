if TextField then return end

local Public, Private = {}, {}
TextField = Public

local focus

local o = {}

o = {
    bgColorR = 255,
    bgColorG = 255,
    bgColorB = 255,
    bgColorA = 178,

	--Posição horizontal do campo
	left = 0,
	--Posição vertical do campo
	top = 0,
	--Largura do campo
	width = 100,
	--Altura do campo
	height = 40,

} 

function Public:new(top, left, width, height)
	self = {
		left = left or o.left,
		top = top or o.top,
		width = width or o.width,
        height = height or o.height,
	}

    canvas:new(self.width, self.height)

    canvas:attrColor(o.bgColorR, o.bgColorG, o.bgColorB, o.bgColorA)

	canvas:drawRect('frame', self.left, self.top, self.width, self.height)
	  
	canvas:flush()
    
end

function Public:setFocus(b)
    if b then
        
        focus = b
    else
        print'sem foco'
        focus = b
    end

    return focus
end

function Public:isFocused()
    return focus
end
