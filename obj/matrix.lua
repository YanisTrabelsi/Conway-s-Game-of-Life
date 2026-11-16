local Matrix = {}

function Matrix:new(dimension)
	local obj = {
		dimension = dimension,
		matrix = {}
	}
	setmetatable(obj, Matrix)
	self.__index = self
	return obj
end

function Matrix:init()
	local mt = {}
	for i = 1, self.dimension[1] do
		mt[i] = {}
		for j = 1, self.dimension[2] do
			mt[i][j] = 0
		end
	end
	self.matrix = mt
end

function Matrix:show()
	for i = 1, #self.matrix do
		for j = 1, #self.matrix[i]do
			io.write(" ")
			io.write(self.matrix[i][j])
		end
		io.write("\n")
	end
end

return Matrix
