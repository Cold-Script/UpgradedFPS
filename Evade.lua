local function Billboard(child, name, color, title)
local Billboard = Instance.new("BillboardGui");do
Billboard.Active = true;
Billboard.AlwaysOnTop = true;
Billboard.ClipsDescendants = true;
Billboard.LightInfluence = 1;
Billboard.Size = UDim2.new(10000, 0, 10000, -15);
Billboard.ResetOnSpawn = false;
Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
Billboard.Parent = child;
Billboard.Name = title;
local Title = Instance.new("TextLabel");
Title.TextSize = 15;
Title.Font = "Oswald";
Title.TextColor3 = color;
Title.BackgroundColor3 = Color3.new(1, 1, 1);
Title.BackgroundTransparency = 1;
Title.BorderColor3 = Color3.new(0, 0, 0);
Title.BorderSizePixel = 0;
Title.Size = UDim2.new(1, 0, 1, 0);
Title.Visible = true;
Title.Parent = Billboard;
local uistroke = Instance.new("UIStroke");
uistroke.Thickness = 1;
uistroke.Parent = Title;
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
Title.Text = string.format("%s\n[%sm]", name or child.Name, math.floor((workspace.CurrentCamera.CFrame.Position - child:GetPivot().Position).Magnitude));
end);
end);
end
end
local function CylinderESP(child, name, color, title)
Billboard(child, name, color, title)
local Adornment = Instance.new("CylinderHandleAdornment")
Adornment.Height = child.Size.Y * 1.25
Adornment.Radius = child.Size.X * 2
Adornment.CFrame = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90), 0, 0)
Adornment.Color3 = color
Adornment.Transparency = 0.6
Adornment.AlwaysOnTop = true
Adornment.ZIndex = 10
Adornment.Adornee = child
Adornment.Name = title
Adornment.Parent = child
end

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
for _,v in pairs(workspace.Game.Players:GetDescendants()) do
CylinderESP(v, v.Name, v.Color, "NoName")
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
Library:Notify("[ YOU HUB (Warning) ] : By rechedmcvn & GV , Goodluck GamePlay")
notify:Play()
