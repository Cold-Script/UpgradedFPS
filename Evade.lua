for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Lights" then
v:Destroy()
elseif v.Name == "Doors" then
v:Destroy()
elseif v.Name == "Props" then
v:Destroy()
elseif v.Name == "Objectives" then
v:Destroy()
elseif v.Name == "ImmovableProps" then
v:Destroy()
elseif v.Name == "InvisParts" then
v:Destroy()
elseif v.Name == "Elevator" then
v:Destroy()
elseif v.Name == "Ignore" then
v:Destroy()
elseif v.Name == "Quick Export (RIGHT CLICK |xsixx FILES, SAVE TO ROBLOX)" then
v:Destroy()
elseif v.Name == "ItemSpawns" then
v:Destroy()
elseif v.Name == "Grass" then
v:Destroy()
elseif v.Name == "Paintings" then
v:Destroy()
elseif v.Name == "Hill" then
v:Destroy()
elseif v.Name == "Navmesh" then
v:Destroy()
elseif v.Name == "Wedge" then
v:Destroy()
elseif v.Name == "KillBricks" then
v:Destroy()
elseif v.Name == "MeshPart" then
v:Destroy()
elseif v.Name == "Water" then
v:Destroy()           
elseif v.Name == "SavedTerrain" then
v:Destroy()                
end
end
for _, object in pairs(workspace:GetDescendants()) do
if object:IsA("BasePart") then
if not object:GetAttribute("Material") then object:SetAttribute("Material", object.Material) end
if not object:GetAttribute("Reflectance") then object:SetAttribute("Reflectance", object.Reflectance) end
object.Material = true and Enum.Material.Plastic or object:GetAttribute("Material")
object.Reflectance = true and 0 or object:GetAttribute("Reflectance")
elseif object:IsA("Decal") then
if not object:GetAttribute("Transparency") then object:SetAttribute("Transparency", object.Transparency) end
end
end
workspace.Terrain.WaterReflectance = true and 0 or 1
workspace.Terrain.WaterTransparency = true and 0 or 1
workspace.Terrain.WaterWaveSize = true and 0 or 0.05
workspace.Terrain.WaterWaveSpeed = true and 0 or 8
game.Lighting.GlobalShadows = not true		
game.Lighting.Brightness = 2
game.Lighting.OutdoorAmbient = Color3.new(1,1,1)
