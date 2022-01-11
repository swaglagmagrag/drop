function endround()
  --defining shit
  local chance = math.random(1, 3)
  local rarity = 1
  local rarities = {[1] = "Worn", [2] = "Standard", [3] = "Specialized", [4] = "Superior", [5] = "High-End", [6] = "Ascended", [7] = "Cosmic", [8] = "Planetary"}
  local wep = {[1] = "AK-47", [2] = "MAC10", [3] = "MAC11", [4] = "G11", [5] = "VSS", [6] = "rifle", [7] = "M24", [8] = "pistol", [9] = "glock", [10] = "deagle", [11] = "M16", [12] = "honey badger", [13] = "MP5", [14] = "tec-9", [15] = "famas", [16] = "revolver", [17] = "peacekeeper"}
  local prefix = {[1] = {"Squirt", "Weak", "Busted", "Faulty"}, [2] = {"Ordinary", "Passable", "Pure", "Stable"}, [3] = {"Frisky", "Harmful", "Lush", "Odd"}, [4] = {"Chaotic", "Rapid", "Cozy", "Fearful"}, [5] = {"Petite", "Magic", "Blissful", "Blooming"}, [6] = {"Legend", "Mythical", "Boomer", "Relaxing"}, [7] = {"Radical", "Titan T1", "Immortal", "Extreme"}, [8] = {"Built Different", "Titan T0", "Coal", "God"}}
--functions
  local function flipping()
    local flip = math.random(1,3)
    local weps = math.random(#wep)
    local ran = math.random(#prefix[rarity])
    if flip == 1 then
      rarity = rarity + 1
      flipping()
    else
      if rarity <= 5 then
        print("You have obtained a " .. prefix[rarity][ran] .. " " .. wep[weps] .."!")
      elseif rarity >= 6 then
        print("You have obtained a rare item, it is a " .. rarities[rarity] .. " " .. prefix[rarity][ran] .. " " .. wep[weps] .."!")
      end
      rarity = 1
    end
  end
  if chance == 1 then
    flipping()
  else
    print("You did not obtain any items this round!")
  end
end
endround()
