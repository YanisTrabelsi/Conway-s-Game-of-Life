local gconf = require("gameConfig"):new()

local Cell = {
	aSprite = "██",
	dSprite = "  ",
	cells = {}
}

function Cell:new()
	local obj = {
		isAlive = false
	}
	setmetatable(obj, self)
	self.__index = self
	return obj
end

function Cell:draw()
	if self.isAlive then
		io.write(self.aSprite)
	else
		io.write(self.dSprite)
	end
end

function Cell:init(mt)
	local row = gconf.dimensions[1]
	local col = gconf.dimensions[2]
	local cells = {}

	for i = 1, row do
		cells[i] = {}
		for j = 1, col do
			cells[i][j] = self:new()
			if mt[i][j] == 1 then
				cells[i][j].isAlive = true
			else
				cells[i][j].isAlive = false
			end
		end
	end
	self.cells = cells
end

function Cell:show()
	for i = 1, #self.cells do
		for j = 1, #self.cells[i] do
			if self.cells[i][j].isAlive then
				io.write(self.dSprite)
			else
				io.write(self.aSprite)
			end
		end
		io.write("\n")
	end
end

return Cell
