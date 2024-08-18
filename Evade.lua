local notify = Instance.new'Sound'
notify.SoundId = 'rbxassetid://6897623656'
notify.Volume = 2.5
notify.Parent = game.Players.LocalPlayer.PlayerGui
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/Library.lua"))()
for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "InvisParts" then
v:Destroy()
elseif v.Name == "ItemSpawns" then
v:Destroy()
elseif v.Name == "Ignore" then
v:Destroy()
elseif v.Name == "Navmesh" then
v:Destroy()
end
end
for _,v in pairs(workspace.Game.Map.Parts:GetDescendants()) do
if v.Name == "Lights" then
v:Destroy()
elseif v.Name == "MeshPart" then
v:Destroy()
elseif v.Name == "Water" then
v:Destroy()
end
end
for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "SavedTerrain" then
v:Destroy()
end
end
Library:Notify("[ YOU HUB (Warning) ] : By rechedmcvn & GV , Goodluck GamePlay")
notify:Play()
