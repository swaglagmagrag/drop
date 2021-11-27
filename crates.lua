local item = ""

local rarities = {
  [1] = "Worn", 
  [2] = "Standard", 
  [3] = "Specialized", 
  [4] = "Superior", 
  [5] = "High-End",
  [6] = "Ascended", 
  [7] = "Cosmic", 
  [8] = "Extinct", 
  [9] = "Planetary"
}

local weps = {
[1] = "AK-47", 
[2] = "MAC10", 
[3] = "MAC11", 
[4] = "G11", 
[5] = "VSS", 
[6] = "Rifle", 
[7] = "M24", 
[8] = "Pistol", 
[9] = "Glock", 
[10] = "Deagle", 
[11] = "M16", 
[12] = "Honey Badger", 
[13] = "MP5", 
[14] = "Tec-9", 
[15] = "Famas", 
[16] = "Revolver", 
[17] = "Peacekeeper"
}

local items = {
  {"Baseball Bat", "melee", 1, "weapon_ttt_bat", "Summer Collection"},
  {"Shit", "prefix", 1, "weapon_ttt_bat", "Summer Collection"},
  {"Sexy", "prefix", 4, "", "Alpha Collection"},
  {"Nigga", "prefix", 3, "", "Alpha Collection"},
  {"Among us", "prefix", 5, "", "Alpha Collection"},
  {"Imposter", "prefix", 2, "", "Alpha Collection"}
}

local crates = {
  {"50/50 Crate", "active", 2000, "", {1, 5}},
  {"Alpha Crate", "active", 175, "Alpha Collection", {2, 3, 4, 5, 6, 7, 9}},
  {"Summer Crate", "active", 250, "Summer Collection", {1, 2, 3, 4, 5, 6, 7, 9}}
}

local ran = math.random(#crates)
local wep = math.random(#weps)
local chance = math.random(1, 3)

local function start() 
  local itemr = 1
  local droppables = {}
   if crates[ran][1] ~= "50/50 Crate" then
    if chance == 1 and itemr <= crates[ran][5][#crates[ran][5]] then
      itemr = itemr + 1
    else
     for k, is in pairs(items) do
       if is[5] == crates[ran][4] and is[3] == crates[ran][5][itemr] then
         table.insert(droppables, is)
          item = math.random(#droppables)
        end
      end
    end
   elseif crates[ran][1] == "50/50 Crate" then
      for k, it in pairs(items) do 
        if it[3] == 5 or it[3] == 1 then
      table.insert(droppables, it)
      item = math.random(#droppables)
        end
      end
   end
  if droppables[item][2] == "prefix" then
  print("You opened a " .. crates[ran][1] .. " and got a " .. droppables[item][1] .. " " .. weps[wep] .. "!")
  elseif droppables[item][2] == "melee" then 
    print("You opened a " .. crates[ran][1] .. " and got a " .. droppables[item][1] .. "!")
  end
end
for i = 1, 20 do
 start()
end
