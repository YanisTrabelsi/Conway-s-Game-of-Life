-- Class --
local GameConfig = {
	dimensions = {10, 10}
}

function GameConfig:new()
	local obj = {}
	setmetatable(obj, self)
	self.__index = self
	return obj
end

return GameConfig
