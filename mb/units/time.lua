local Unit = require "mb.units.unit"
local Type = require "mb.units.type"

--- Time units
local Time = Type.new()

Time:register_base(Unit.BASE .. "t") -- Define tick as a base unit.
Time:register(Time["t"] * 20 .. "s") -- 1 second = 20 ticks
Time:register(Time["s"] * 60 .. "min") -- 1 minute = 60 seconds
Time:register(Time["min"] * 60 .. "h") -- 1 hour = 60 minutes
Time:register(Time["h"] * 24 .. "d") -- 1 day = 24 hours
Time:register(Time["d"] * 7 .. "w") -- 1 week = 7 days
Time:register(Time["h"] * 8 .. "md") -- 1 man-day = 8 hours
Time:register(Time["md"] * 5 .. "mw") -- 1 man-week = 5 man-days

return Time
