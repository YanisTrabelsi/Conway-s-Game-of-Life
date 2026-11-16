package.path = package.path .. ";./?/init.lua"
local Obj = require("obj")
local cell = Obj.Cell:new()
local gconf = require("gameConfig"):new()
local mt = Obj.Matrix:new(gconf.dimensions)

os.execute("stty -icanon -echo")
mt:init()
cell:init(mt.matrix)

local function run()
    io.write("\27[2J") -- clear screen
    io.write("\27[H") -- move cursor to top-left
    io.write("\27[?25l") -- hide cursor
	cell:show()
    io.flush()
    os.execute("sleep 0.1")
end

while true do
	local key = io.read(1)
-- QUIT
	if key == "q" then
		io.write("\27[?25h") -- show cursor
		break
	end
-- RELOAD
	if key == "r" then
		run()
	end
end

os.execute("stty icanon echo")
