local item = ""

local rarities = {"Worn", "Standard", "Specialized", "Superior", "High-End","Ascended", "Cosmic", "Planetary"}

local undrops = {"Stock", "Extinct"}

local weps = {"AK-47", "MAC10", "MAC11", "G11", "VSS", "Rifle", "M24", "Pistol", "Glock", "Deagle", "M16", "Honey Badger", "MP5", "Tec-9", "Famas", "Revolver", "Peacekeeper"}

local cur = {}

local items = {
  {"Baseball Bat", "melee", 1, "weapon_ttt_bat", "Summer Collection", 3},
  {"Shit", "prefix", 1, "weapon_ttt_bat", "Summer Collection", 2},
  {"Sexy", "prefix", 4, "", "Alpha Collection", 2},
  {"Oop", "prefix", 3, "", "Alpha Collection", 2},
  {"Among us", "prefix", 5, "", "Alpha Collection", 2},
  {"Imposter", "prefix", 2, "", "Alpha Collection", 2}
  {"Alpha Crate", 2, 2, 250, "Alpha Collection", 1}
}

for k, v in ipairs(items) do
  if v[6] == 1 then
    table.insert(cur, v)
  end
end
local crate = math.random(#cur)
