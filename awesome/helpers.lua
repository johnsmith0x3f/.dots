local beautiful = require("beautiful")
local gears = require("gears")

local helpers = {}

helpers.colorizeText = function(txt, fg)
	if fg == "" then
		fg = "#FFFFFF"
	end

	return "<span foreground='" .. fg .. "'>" .. txt .. "</span>"
end

helpers.rrect = function(radius)
	radius = radius or dpi(4)
	return function(cr, width, height)
		gears.shape.rounded_rect(cr, width, height, radius)
	end
end

helpers.addHover = function(element, bg, hbg)
	element:connect_signal('mouse::enter', function(self)
		self.bg = hbg
	end)
	element:connect_signal('mouse::leave', function(self)
		self.bg = bg
	end)
end

return helpers