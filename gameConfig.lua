-- Class --
local GameConfig = {
	dimensions = {50, 50}
}

function GameConfig:new()
	local obj = {}
	setmetatable(obj, self)
	self.__index = self
	return obj
end

return GameConfig
