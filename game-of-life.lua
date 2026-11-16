local gconf = require("gameConfig"):new()

io.write("Dimensions: ")
print("(x:" ..gconf.dimensions[1] .." y:" ..gconf.dimensions[2] ..")")
