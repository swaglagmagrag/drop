local r = {"Worn", "Standard", "Specialized", "Superior", "High-End", "Ascended", "Cosmic", "Planetary"}
local w = {"Peacekeeper", "MP40", "MP5", "Pistol", "Deagle"}
local p = {{"Weak", "Unstable"}, {"Cover-Girl", "Caring"}, {"Dog", "Loving"}, {"Rapid", "Test"}, {"Fifty", "Dazzling"}, {"Spectacular", "Looking"}, {"Angelic", "Immortal"}, {"God", "Evergreen"}}
local rar = 0
local av = 8
for i = 1, av do
  a = math.random(i)
  if a == i then
    rar = rar + 1
  end
end
local we = math.random(#w)
local pe = math.random(#p[rar])
if rar == 6 then
  print("Congrats! You have obtained an " .. r[rar] .. " " .. p[pe] .. " " .. w[we] "!")
else
  print("Congrats! You have obtained a " .. r[rar] .. " " .. p[pe] .. " " .. w[we] "!")
end
if rar > 5 then
  print("This is a rare item!")
end
