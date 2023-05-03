if UnitFactionGroup("player")~="Neutral" then return end

local name,addon = ...
addon.LibRoverData.neighbourhood={
version = addon.LibRoverData.version.nodes_version, -- [1]
silent = true,
}