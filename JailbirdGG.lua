if not syn or not protectgui then
    getgenv().protectgui = function()end
end

Library = loadstring(game:HttpGet('https://lindseyhost.com/UI/LinoriaLib.lua'))();

local Window = Library:CreateWindow("Jailbird.gg V3")

local Fonts = {};
for Font, _ in next, Drawing.Fonts do
	table.insert(Fonts, Font);
end;

local skinTable = {""}
for i,v in pairs(game:GetService("ReplicatedStorage").Items.Skin:GetChildren()) do	
	if v:IsA("Decal") or v:IsA("Texture") then
		table.insert(skinTable, v.Name)
		table.sort(skinTable)

	end
end


local Material1 = {"Plastic", "Neon", "ForceField"}
local Material2 = {"Plastic", "Neon", "ForceField"}
local Skins = {"Skin1", "Skin2", "Skin3"}
local Loadout = {"Loadout1", "Loadout2", "Loadout3", "Loadout4", "Loadout5"}
local AimParts = {"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}
local SnapParts = {"Head", "Torso", "Legs"}

Library:SetWatermark("Jailbird.gg V3 | " .. os.date("%x") .. " | W.I.P Build (Not finished)")
Library:Notify("Loading UI...")
Library:Notify("Newest Version | v1.0 W.I.P")
Library:Notify("Right Shift to Open the Menu")

local AimTab = Window:AddTab("Aimbot")
local VisTab = Window:AddTab("Visuals")
local RageTab = Window:AddTab("Rage")
local SettingsTab = Window:AddTab("Settings")

local AimbotTabbox1 = AimTab:AddLeftTabbox("Aimbot")
local Aim1 = AimbotTabbox1:AddTab("Aimbot")
Aim1:AddToggle("aim_enabled", {Text = "Enable"}):AddKeyPicker("aim_key", {Text = "Aimbot", Default = "X", Mode = "Hold"})
Aim1:AddToggle("fov_Circle", {Text = "FOV Circle"}):AddColorPicker("fovColor", { Default = Color3.fromRGB(255, 255, 255) })
Aim1:AddSlider("aimbot_distance", {Text = "Aimbot Distance", Default = 300, Min = 50, Max = 500, Rounding = 0})
Aim1:AddSlider("circle_radius", {Text = "Circle Radius", Default = 250, Min = 50, Max = 600, Rounding = 0})
--Aim1:AddToggle("smoothing", {Text = "Smoothing"})
--Aim1:AddSlider("smoothing_ammount", {Text = "Smoothing Ammount", Default = 0, Min = 0, Max = 25, Rounding = 0})
Aim1:AddDropdown("aim_part", {Text = "Aim Part", Default = 1, Values = AimParts})

local VisTabbox1 = VisTab:AddLeftTabbox("Enemy ESP")
local Esp1 = VisTabbox1:AddTab("Enemy ESP")
Esp1:AddToggle("name_tags", {Text = "Nametags"}):AddColorPicker("nameColor", { Default = Color3.fromRGB(255, 255, 255) })
Esp1:AddToggle("distance", {Text = "Distance"})
Esp1:AddToggle("boxes", { Text = "Boxes" }):AddColorPicker("bColor", { Default = Color3.fromRGB(255, 255, 255) })
Esp1:AddToggle("head_dot", {Text = "Head Dot"})
Esp1:AddToggle("health_bar", {Text = "Healthbar"})
Esp1:AddToggle("snaplines", {Text = "Snaplines"})

local Esp2 = VisTabbox1:AddTab("ESP Settings")
Esp2:AddSlider("FontSize", {Text = "Font Size", Default = 14, Min = 8, Max = 24, Rounding = 0})
Esp2:AddDropdown("SelectedFont", { Text = "ESP Font", Default = 1, Values = Fonts })
Esp2:AddDropdown("SnaplinePart", {Text = "Snapline Part", Default = 1, Values = SnapParts})

local VisTabbox2 = VisTab:AddLeftTabbox("Local Chams")
local Chams1 = VisTabbox2:AddTab("Local")
Chams1:AddSlider("player_fov", {Text = "FOV", Default = 70, Min = 40, Max = 120, Rounding = 0})
Chams1:AddToggle("gun_chams", {Text = "Gun Chams"}):AddColorPicker("gunColor", { Default = Color3.fromRGB(255, 255, 255) })
Chams1:AddSlider("gun_chams_transparency", { Text = "Gun Chams Transparency", Default = 0, Min = 0, Max = 1, Rounding = 2})
Chams1:AddDropdown("gun_mat", {Text = "Gun Material", Default = 1, Values = Material1})
Chams1:AddToggle("hand_chams", {Text = "Local Player Model Chams"}):AddColorPicker("handColor", { Default = Color3.fromRGB(255, 255, 255) })
Chams1:AddSlider("hand_chams_transparency", { Text = "Hand Chams Transparency", Default = 0, Min = 0, Max = 1, Rounding = 2})
Chams1:AddDropdown("hand_mat", {Text = "Hand Material", Default = 1, Values = Material2})

local Chams2 = VisTabbox2:AddTab("Enemy Chams")
Chams2:AddToggle("enemy_chams", {Text = "Enemy Chams"}):AddColorPicker("eColor", { Default = Color3.fromRGB(255, 255, 255) })
Chams2:AddToggle("enemy_chams_ontop", {Text = "Always on Top"})
Chams2:AddSlider("enemy_chams_transparency", { Text = "Chams Transparency", Default = 0, Min = 0, Max = 1, Rounding = 2 })
Chams2:AddSlider("enemy_transparency", { Text = "Enemy Transparency", Default = 0, Min = 0, Max = 1, Rounding = 2 })

local VisTabbox3 = VisTab:AddRightTabbox("Crosshair")
local Cross1 = VisTabbox3:AddTab("Crosshair")
Cross1:AddToggle("crosshair", {Text = "Enable"}):AddColorPicker("crossColor", { Default = Color3.fromRGB(255, 255, 255) })
Cross1:AddSlider("cross_length", { Text = "Crosshair Length", Default = 12, Min = 2, Max = 64, Rounding = 0, Suffix = "px"})
Cross1:AddSlider("cross_trans", { Text = "Crosshair Transparency", Default = 1, Min = 0, Max = 1, Rounding = 2 })

local VisTabbox4 = VisTab:AddRightTabbox("Render")
local Rend1 = VisTabbox4:AddTab("Render")

local VisTabbox5 = VisTab:AddRightTabbox("Skin Changer")
local Skin1 = VisTabbox5:AddTab("Skin Changer")

Skin1:AddDropdown("primary", {Text = "Primary", Default = 1, Values = skinTable })
Skin1:AddDropdown("secondary", {Text = "Secondary", Default = 1, Values = skinTable })

local Load = VisTabbox5:AddTab("Loadout")
Load:AddDropdown("loadout", {Text = "Loadout", Default = 1, Values = Loadout })

local World1 = VisTabbox4:AddTab("World")
World1:AddLabel("Nothing here yet, please wait")

local PlayerTabbox1 = RageTab:AddLeftTabbox("Player")
local Player1 = PlayerTabbox1:AddTab("Player")
Player1:AddLabel("Thirdperson"):AddKeyPicker("thirdKey", {Text = "Thirdperson", Default = "Quote"})
Player1:AddSlider("player_speed", { Text = "Player Speed", Default = 10, Min = 10, Max = 100, Rounding = 0})
Player1:AddSlider("player_height", { Text = "Player Jump Height", Default = 16, Min = 10, Max = 100, Rounding = 0})

local ExploitsTabbox1 = RageTab:AddRightTabbox("Exploits")
local Exploits1 = ExploitsTabbox1:AddTab("Exploits")
Exploits1:AddLabel("Fly"):AddKeyPicker("flyKey", {Text = "Fly", Default = "LeftBracket"})
Exploits1:AddLabel("Ferrari Peek"):AddKeyPicker("peekKey", {Text = "Ferrari Peek", Default = "RightBracket"})
Exploits1:AddLabel("Phase"):AddKeyPicker("phaseKey", {Text = "Phase Key", Default = "Semicolon"})
Exploits1:AddSlider("phase_time", { Text = "Phase Duration", Default = 10, Min = 10, Max = 100, Rounding = 0, Suffix = "s"})
Exploits1:AddLabel("Player TP Loop"):AddKeyPicker("tpLoopKey", {Text = "TP Loop Key", Default = "Comma"})

local ExploitsTabbox2 = RageTab:AddLeftTabbox("Gun Mods")
local Exploits2 = ExploitsTabbox2:AddTab("Gun Mods")
Exploits2:AddToggle("gunMods", {Text = "Gun Mods"})
Exploits2:AddToggle("infAmmo", {Text = "Infinite Ammo"})
Exploits2:AddSlider("fireRate", { Text = "Fire Rate", Default = 2700, Min = 1000, Max = 5000, Rounding = 0})
Exploits2:AddSlider("bulletSpeed", { Text = "Bullet Speed", Default = 2500, Min = 1000, Max = 5000, Rounding = 0})


local function UpdateTheme()
    Library.BackgroundColor = Options.BackgroundColor.Value;
    Library.MainColor = Options.MainColor.Value;
    Library.AccentColor = Options.AccentColor.Value;
    Library.AccentColorDark = Library:GetDarkerColor(Library.AccentColor);
    Library.OutlineColor = Options.OutlineColor.Value;
    Library.FontColor = Options.FontColor.Value;

    Library:UpdateColorsUsingRegistry();
end;

local function SetDefault()
    Options.FontColor:SetValueRGB(Color3.fromRGB(255, 255, 255));
    Options.MainColor:SetValueRGB(Color3.fromRGB(28, 28, 28));
    Options.BackgroundColor:SetValueRGB(Color3.fromRGB(20, 20, 20));
    Options.AccentColor:SetValueRGB(Color3.fromRGB(97, 14, 166));
    Options.OutlineColor:SetValueRGB(Color3.fromRGB(50, 50, 50));
    Toggles.Rainbow:SetValue(false);

    UpdateTheme();
end;

local Theme = SettingsTab:AddLeftGroupbox('Theme');
Theme:AddLabel('Background Color'):AddColorPicker('BackgroundColor', { Default = Library.BackgroundColor });
Theme:AddLabel('Main Color'):AddColorPicker('MainColor', { Default = Library.MainColor });
Theme:AddLabel('Accent Color'):AddColorPicker('AccentColor', { Default = Library.AccentColor });
Theme:AddToggle('Rainbow', { Text = 'Rainbow Accent Color' });
Theme:AddLabel('Outline Color'):AddColorPicker('OutlineColor', { Default = Library.OutlineColor });
Theme:AddLabel('Font Color'):AddColorPicker('FontColor', { Default = Library.FontColor });
Theme:AddButton('Default Theme', SetDefault);
Theme:AddToggle('Keybinds', { Text = 'Show Keybinds Menu', Default = true }):OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.Keybinds.Value;
end);
Theme:AddToggle('Watermark', { Text = 'Show Watermark', Default = true }):OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.Watermark.Value);
end);
Theme:AddToggle("damage_notis", { Text = "Damage Notifications", Default = false})

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Toggles.Rainbow.Value then
            local Registry = Window.Holder.Visible and Library.Registry or Library.HudRegistry;

            for Idx, Object in next, Registry do
                for Property, ColorIdx in next, Object.Properties do
                    if ColorIdx == 'AccentColor' or ColorIdx == 'AccentColorDark' then
                        local Instance = Object.Instance;
                        local yPos = Instance.AbsolutePosition.Y;

                        local Mapped = Library:MapValue(yPos, 0, 1080, 0, 0.5) * 1.5;
                        local Color = Color3.fromHSV((Library.CurrentRainbowHue - Mapped) % 1, 0.8, 1);

                        if ColorIdx == 'AccentColorDark' then
                            Color = Library:GetDarkerColor(Color);
                        end;

                        Instance[Property] = Color;
                    end;
                end;
            end;
        end;
    end;
end);

Toggles.Rainbow:OnChanged(function()
    if not Toggles.Rainbow.Value then
        UpdateTheme();
    end;
end);

Options.BackgroundColor:OnChanged(UpdateTheme);
Options.MainColor:OnChanged(UpdateTheme);
Options.AccentColor:OnChanged(UpdateTheme);
Options.OutlineColor:OnChanged(UpdateTheme);
Options.FontColor:OnChanged(UpdateTheme);

local function tp()
    local Player = game.Players.LocalPlayer
    local TP = game:GetService("TeleportService")
    TP:Teleport(6055959032, Player)
end;

local Extra = SettingsTab:AddRightTabbox("Extras")
local Feats = Extra:AddTab("Extras")
Feats:AddButton("Teleport back to lobby", tp)

Library:Notify("Loaded UI!");

-- Features below

local lplr = game.Players.LocalPlayer -- Local Player
local camera = game:GetService("Workspace").CurrentCamera -- Camera
local CurrentCamera = workspace.CurrentCamera -- Current Camera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint -- View Port Point
local UIS = game:GetService("UserInputService")

local dwCamera = workspace.CurrentCamera
local dwRunService = game:GetService("RunService")
local dwUIS = game:GetService("UserInputService")
local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer
local dwMouse = dwLocalPlayer:GetMouse()

local HeadOff = Vector3.new(0, 0.2, 0)
local LegOff = Vector3.new(0,4.7,0)
local HeadOff2 = Vector3.new(0, 5.6, 0)
local SnapLeg = Vector3.new(0, 3.2, 0)
local HealthOff = Vector3.new(-6,0,0)
local currentGun = "M4A1"


-- Box ESP
for i,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 2
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Options.bColor.Value
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local HealthBarOutline = Drawing.new("Square")
    HealthBarOutline.Thickness = 3
    HealthBarOutline.Filled = false
    HealthBarOutline.Color = Color3.new(0,0,0)
    HealthBarOutline.Transparency = 1
    HealthBarOutline.Visible = false

    local HealthBar = Drawing.new("Square")
    HealthBar.Thickness = 1
    HealthBar.Filled = false
    HealthBar.Transparency = 1
    HealthBar.Visible = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                Box.Color = Options.bColor.Value

                if onScreen and Toggles.boxes.Value == true or onScreen and Toggles.health_bar.Value == true then

                    BoxOutline.Size = Vector2.new(1650 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    --BoxOutline.Visible = false

                    Box.Size = Vector2.new(1650 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    --Box.Visible = false

                    HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                    HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
                    --HealthBarOutline.Visible = false
                
                    HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (workspace[v.Character.Name].Humanoid.MaxHealth / math.clamp(workspace[v.Character.Name].Humanoid.Health, 0, workspace[v.Character.Name].Humanoid.MaxHealth)))
                    HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
                    HealthBar.Color = Color3.fromRGB(255 - 255 / (workspace[v.Character.Name].Humanoid.MaxHealth / workspace[v.Character.Name].Humanoid.Health), 255 / (workspace[v.Character.Name].Humanoid.MaxHealth / workspace[v.Character.Name].Humanoid.Health), 0)
                    --HealthBar.Visible = false

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                        HealthBar.Visible = false
                        HealthBarOutline.Visible = false
                    else

                        if Toggles.boxes.Value == true then
                            BoxOutline.Visible = true
                            Box.Visible = true
                        else
                            BoxOutline.Visible = false
                            Box.Visible = false
                        end

                        if Toggles.health_bar.Value == true then
                            HealthBar.Visible = true
                            HealthBarOutline.Visible = true
                        else
                            HealthBar.Visible = false
                            HealthBarOutline.Visible = false
                        end

                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    HealthBar.Visible = false
                    HealthBarOutline.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
                HealthBar.Visible = false
                HealthBarOutline.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 2
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Options.bColor.Value
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local HealthBarOutline = Drawing.new("Square")
    HealthBarOutline.Thickness = 3
    HealthBarOutline.Filled = false
    HealthBarOutline.Color = Color3.new(0,0,0)
    HealthBarOutline.Transparency = 1
    HealthBarOutline.Visible = false

    local HealthBar = Drawing.new("Square")
    HealthBar.Thickness = 1
    HealthBar.Filled = false
    HealthBar.Transparency = 1
    HealthBar.Visible = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                Box.Color = Options.bColor.Value

                if onScreen and Toggles.boxes.Value == true or onScreen and Toggles.health_bar.Value == true then

                    BoxOutline.Size = Vector2.new(1650 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    --BoxOutline.Visible = false

                    Box.Size = Vector2.new(1650 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    --Box.Visible = false

                    HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                    HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
                    --HealthBarOutline.Visible = false
                
                    HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (workspace[v.Character.Name].Humanoid.MaxHealth / math.clamp(workspace[v.Character.Name].Humanoid.Health, 0, workspace[v.Character.Name].Humanoid.MaxHealth)))
                    HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
                    HealthBar.Color = Color3.fromRGB(255 - 255 / (workspace[v.Character.Name].Humanoid.MaxHealth / workspace[v.Character.Name].Humanoid.Health), 255 / (workspace[v.Character.Name].Humanoid.MaxHealth / workspace[v.Character.Name].Humanoid.Health), 0)
                    --HealthBar.Visible = false

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                        HealthBar.Visible = false
                        HealthBarOutline.Visible = false
                    else

                        if Toggles.boxes.Value == true then
                            BoxOutline.Visible = true
                            Box.Visible = true
                        else
                            BoxOutline.Visible = false
                            Box.Visible = false
                        end

                        if Toggles.health_bar.Value == true then
                            HealthBar.Visible = true
                            HealthBarOutline.Visible = true
                        else
                            HealthBar.Visible = false
                            HealthBarOutline.Visible = false
                        end

                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    HealthBar.Visible = false
                    HealthBarOutline.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
                HealthBar.Visible = false
                HealthBarOutline.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)

-- Head Dot ESP
for i,v in pairs(game.Players:GetChildren()) do

    local CircleOutline = Drawing.new("Circle")
    CircleOutline.Visible = false
    CircleOutline.Radius = 30
    CircleOutline.Color = Color3.fromRGB(0, 0 ,0)
    CircleOutline.Thickness = 3
    CircleOutline.Filled = false
    CircleOutline.Transparency = 1

    local HeadCircle = Drawing.new("Circle")
    HeadCircle.Visible = false
    HeadCircle.Radius = 30
    HeadCircle.Color = Options.bColor.Value
    HeadCircle.Thickness = 1
    HeadCircle.Filled = false
    HeadCircle.Transparency = 1

    function headCircle()

        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)  
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position)

                HeadCircle.Color = Options.bColor.Value

                if onScreen == true and Toggles.head_dot.Value == true then

                    HeadCircle.Position = Vector2.new(HeadPosition.X / 1, HeadPosition.Y / 1)
                    HeadCircle.Radius = 350 / RootPosition.Z
                    HeadCircle.Visible = true

                    CircleOutline.Position = Vector2.new(HeadPosition.X / 1, HeadPosition.Y / 1)
                    CircleOutline.Radius = 350 / RootPosition.Z
                    CircleOutline.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        HeadCircle.Visible = false
                        CircleOutline.Visible = false
                    else
                        HeadCircle.Visible = true
                        CircleOutline.Visible = true
                    end
                else
                    HeadCircle.Visible = false
                    CircleOutline.Visible = false
                end

            else
                HeadCircle.Visible = false
                CircleOutline.Visible = false
            end

        end)
        
    end
    coroutine.wrap(headCircle)()
end

game.Players.PlayerAdded:Connect(function(v)
    
    local CircleOutline = Drawing.new("Circle")
    CircleOutline.Visible = false
    CircleOutline.Radius = 30
    CircleOutline.Color = Color3.fromRGB(0, 0 ,0)
    CircleOutline.Thickness = 3
    CircleOutline.Filled = false
    CircleOutline.Transparency = 1

    local HeadCircle = Drawing.new("Circle")
    HeadCircle.Visible = false
    HeadCircle.Radius = 30
    HeadCircle.Color = Options.bColor.Value
    HeadCircle.Thickness = 1
    HeadCircle.Filled = false
    HeadCircle.Transparency = 1

    function headCircle()

        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)  
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position)

                HeadCircle.Color = Options.bColor.Value

                if onScreen == true and Toggles.head_dot.Value == true then

                    HeadCircle.Position = Vector2.new(HeadPosition.X / 1, HeadPosition.Y / 1)
                    HeadCircle.Radius = 350 / RootPosition.Z
                    HeadCircle.Visible = true

                    CircleOutline.Position = Vector2.new(HeadPosition.X / 1, HeadPosition.Y / 1)
                    CircleOutline.Radius = 350 / RootPosition.Z
                    CircleOutline.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        HeadCircle.Visible = false
                        CircleOutline.Visible = false
                    else
                        HeadCircle.Visible = true
                        CircleOutline.Visible = true
                    end
                else
                    HeadCircle.Visible = false
                    CircleOutline.Visible = false
                end

            else
                HeadCircle.Visible = false
                CircleOutline.Visible = false
            end

        end)
    end
    coroutine.wrap(headCircle)()
end)

-- Nametag ESP
for i,v in pairs(game.Players:GetChildren()) do

    local NameESP = Drawing.new("Text")
    NameESP.Visible = false
    NameESP.Center = true
    NameESP.Outline = true
    NameESP.Font = 1
    NameESP.Size = Options.FontSize.Value
    NameESP.Color = Options.nameColor.Value
    NameESP.Text = v.Name

    function nameESP()

        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then

                local TextVect, onScreen = camera:WorldToViewportPoint(v.Character.Head.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)  
                local HeadPosition = worldToViewportPoint(CurrentCamera, RootPart.Position + HeadOff2)

                NameESP.Color = Options.nameColor.Value
                NameESP.Size = Options.FontSize.Value

                if onScreen == true and Toggles.name_tags.Value == true then

                    local texts = math.ceil((RootPart.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude)

                    NameESP.Position = Vector2.new(HeadPosition.X, HeadPosition.Y)

                    if v.TeamColor == lplr.TeamColor then
                        NameESP.Visible = false
                    else
                        NameESP.Visible = true
                    end
                else
                    NameESP.Visible = false
                end

            else
                NameESP.Visible = false
            end

        end)
        
    end
    coroutine.wrap(nameESP)()
end

game.Players.PlayerAdded:Connect(function (v)

    local NameESP = Drawing.new("Text")
    NameESP.Visible = false
    NameESP.Center = true
    NameESP.Outline = true
    NameESP.Font = 1
    NameESP.Size = Options.FontSize.Value
    NameESP.Color = Options.nameColor.Value
    NameESP.Text = v.Name

    function nameESP()

        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then

                local TextVect, onScreen = camera:WorldToViewportPoint(v.Character.Head.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)  
                local HeadPosition = worldToViewportPoint(CurrentCamera, RootPart.Position + HeadOff2)

                NameESP.Color = Options.nameColor.Value
                NameESP.Size = Options.FontSize.Value

                if onScreen == true and Toggles.name_tags.Value == true then

                    local texts = math.ceil((RootPart.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude)

                    NameESP.Position = Vector2.new(HeadPosition.X, HeadPosition.Y)

                    if v.TeamColor == lplr.TeamColor then
                        NameESP.Visible = false
                    else
                        NameESP.Visible = true
                    end
                else
                    NameESP.Visible = false
                end

            else
                NameESP.Visible = false
            end

        end)
        
    end
    coroutine.wrap(nameESP)()

end)

-- Distance ESP
for i,v in pairs(game.Players:GetChildren()) do

    local DistESP = Drawing.new("Text")
    DistESP.Visible = false
    DistESP.Center = true
    DistESP.Outline = true
    DistESP.Font = 1
    DistESP.Size = Options.FontSize.Value
    DistESP.Color = Options.nameColor.Value
    DistESP.Text = ""

    function distESP()

        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then

                local TextVect, onScreen = camera:WorldToViewportPoint(v.Character.Head.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)  
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                DistESP.Color = Options.nameColor.Value
                DistESP.Size = Options.FontSize.Value
                
                if onScreen == true and Toggles.distance.Value == true then

                    local texts = math.ceil((RootPart.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude)

                    DistESP.Position = Vector2.new(LegPosition.X, LegPosition.Y)
                    
                    DistESP.Text = tostring("(" .. texts .. ")")

                    if v.TeamColor == lplr.TeamColor then
                        DistESP.Visible = false
                    else
                        DistESP.Visible = true
                    end
                else
                    DistESP.Visible = false
                end

            else
                DistESP.Visible = false
            end

        end)
        
    end
    coroutine.wrap(distESP)()
end

game.Players.PlayerAdded:Connect(function (v)

    local DistESP = Drawing.new("Text")
    DistESP.Visible = false
    DistESP.Center = true
    DistESP.Outline = true
    DistESP.Font = 1
    DistESP.Size = 12
    DistESP.Color = Options.nameColor.Value
    DistESP.Text = ""

    function distESP()

        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then

                local TextVect, onScreen = camera:WorldToViewportPoint(v.Character.Head.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)  
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                DistESP.Color = Options.nameColor.Value

                if onScreen == true and Toggles.distance.Value == true then

                    local texts = math.ceil((RootPart.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude)

                    DistESP.Position = Vector2.new(LegPosition.X, LegPosition.Y)
                    
                    DistESP.Text = tostring("(" .. texts .. ")")

                    if v.TeamColor == lplr.TeamColor then
                        DistESP.Visible = false
                    else
                        DistESP.Visible = true
                    end
                else
                    DistESP.Visible = false
                end

            else
                DistESP.Visible = false
            end

        end)
        
    end
    coroutine.wrap(distESP)()

end)

-- Snaplines ESP
for i,v in pairs(game.Players:GetChildren()) do

    local lineSnap = Drawing.new("Line")
    lineSnap.Visible =  false
    lineSnap.Thickness = 1
    lineSnap.Color = Options.bColor.Value

function Snaplines()
    
    game:GetService("RunService").RenderStepped:Connect(function ()
        if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
            local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

            local RootPart = v.Character.HumanoidRootPart
            local Head = v.Character.Head
            local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)   
            local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position)
            local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - SnapLeg)

            lineSnap.Color = Options.bColor.Value

            if onScreen and Toggles.snaplines.Value == true then

                if Options.SnaplinePart.Value == "Head" then
                    lineSnap.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    lineSnap.To = Vector2.new(HeadPosition.X, HeadPosition.Y)
                else 
                    if Options.SnaplinePart.Value == "Torso" then
                        lineSnap.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                        lineSnap.To = Vector2.new(RootPosition.X, RootPosition.Y)
                    else
                        if Options.SnaplinePart.Value == "Legs" then
                            lineSnap.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                            lineSnap.To = Vector2.new(LegPosition.X, LegPosition.Y)
                        end
                    end
                    

                end

                if v.TeamColor == lplr.TeamColor then
                    lineSnap.Visible = false
                else
                    lineSnap.Visible = true
                end
            else
                lineSnap.Visible = false
            end
        else
            lineSnap.Visible = false
        end
    end)
end
coroutine.wrap(Snaplines)()
end

game.Players.PlayerAdded:Connect(function (v)

    local lineSnap = Drawing.new("Line")
    lineSnap.Visible =  false
    lineSnap.Thickness = 1
    lineSnap.Color = Options.bColor.Value

function Snaplines()
    
    game:GetService("RunService").RenderStepped:Connect(function ()
        if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
            local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

            local RootPart = v.Character.HumanoidRootPart
            local Head = v.Character.Head
            local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)   
            local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position)
            local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - SnapLeg)

            lineSnap.Color = Options.bColor.Value

            if onScreen and Toggles.snaplines.Value == true then

                if Options.SnaplinePart.Value == "Head" then
                    lineSnap.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    lineSnap.To = Vector2.new(HeadPosition.X, HeadPosition.Y)
                else 
                    if Options.SnaplinePart.Value == "Torso" then
                        lineSnap.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                        lineSnap.To = Vector2.new(RootPosition.X, RootPosition.Y)
                    else
                        if Options.SnaplinePart.Value == "Legs" then
                            lineSnap.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                            lineSnap.To = Vector2.new(LegPosition.X, LegPosition.Y)
                        end
                    end
                    

                end

                if v.TeamColor == lplr.TeamColor then
                    lineSnap.Visible = false
                else
                    lineSnap.Visible = true
                end
            else
                lineSnap.Visible = false
            end
        else
            lineSnap.Visible = false
        end
    end)
end
coroutine.wrap(Snaplines)()

end)

-- Cham and Character utils -- base fov = 70
function gunGetter()
    game:GetService("RunService").RenderStepped:Connect(function ()

	    for i,v in pairs(workspace[game.Players.LocalPlayer.Name]:GetDescendants()) do
            if v:IsA("Tool") then  
                
                currentGun = v.Name
            end
            
        end
    
    end)

end
coroutine.wrap(gunGetter)()

-- Local Chams
function gunChams()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Toggles.gun_chams.Value == true then   
            for i,v in pairs(game:GetService("Workspace").Camera[currentGun][currentGun]:GetChildren()) do
                if v:IsA("Part") or v:IsA("MeshPart") then
                    
                    v.BrickColor = BrickColor.new(Options.gunColor.Value)
                    v.Material = Options.gun_mat.Value
                    v.Transparency = Options.gun_chams_transparency.Value
                end
            end
        end
    end)
end
coroutine.wrap(gunChams)()

function localChams()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Toggles.hand_chams.Value == true then
            for i,v in pairs(game:GetService("Workspace").Camera[currentGun]:GetChildren()) do
                if v:IsA("Part") and v.Name == "Left Arm" or v.Name == "Right Arm" then
                    
                    v.BrickColor = BrickColor.new(Options.handColor.Value)
                    v.Material = Options.hand_mat.Value
                    v.Transparency = Options.hand_chams_transparency.Value

                end
                
            end
        end
    end)
end
coroutine.wrap(localChams)()

-- Enemy Chams
function chams()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Toggles.enemy_chams.Value == true then
            for i,v in pairs(game.Players:GetChildren()) do
                for i,b in pairs(v.Character:GetChildren()) do
                    if b:IsA("Part") and v.Character.Humanoid.Health > 0 and v ~= lplr and v.TeamColor ~= lplr.TeamColor then
                        if not b:FindFirstChild("BoxHandleAdornment") then
                            b.Transparency = 0.5
                            local box = Instance.new("BoxHandleAdornment", b)
                            box.AlwaysOnTop = Toggles.enemy_chams_ontop.Value
                            box.Adornee = b
                            box.Size = b.Size
                            box.Color3 = Options.eColor.Value
                            box.ZIndex = 1                                         
                            box.Transparency = Options.enemy_chams_transparency.Value

                            repeat wait()
                                box.Color3 = Options.eColor.Value
                                box.Transparency = Options.enemy_chams_transparency.Value
                                box.AlwaysOnTop = Toggles.enemy_chams_ontop.Value
                            until Toggles.enemy_chams.Value == false
                        end
                    end
                end
            end
        end
    end)
end
coroutine.wrap(chams)()

function destroyChams()
    game:GetService("RunService").RenderStepped:Connect(function ()
           for i,v in pairs(game.Players:GetChildren()) do
              for i,b in pairs(v.Character:GetChildren()) do
                  if b:IsA("Part") and v.Character.Humanoid.Health == 0 or Toggles.enemy_chams.Value == false or v.TeamColor == lplr.TeamColor then
                      if b:FindFirstChild("BoxHandleAdornment") then
                          b.BoxHandleAdornment:Destroy()
                      end
                  end
              end
           end
    end)
end
coroutine.wrap(destroyChams)()

-- Crosshair
local CrosshairDown = Drawing.new("Line") -- y
local CrosshairCross = Drawing.new("Line") -- x

function makeCrosshair()
    game:GetService("RunService").RenderStepped:Connect(function ()
        if Toggles.crosshair.Value == true then

            CrosshairDown.Color = Options.crossColor.Value
            CrosshairDown.Thickness = 1 
            CrosshairDown.Transparency = Options.cross_trans.Value

            CrosshairCross.Color = Options.crossColor.Value
            CrosshairCross.Thickness = 1 
            CrosshairCross.Transparency = Options.cross_trans.Value

            if Toggles.crosshair.Value == true then

                CrosshairDown.Visible = true
                CrosshairCross.Visible = true
            
                CrosshairCross.From = Vector2.new((CurrentCamera.ViewportSize.X/2)+(Options.cross_length.Value/2+1), CurrentCamera.ViewportSize.Y/2) 
                CrosshairCross.To = Vector2.new(CurrentCamera.ViewportSize.X/2-(Options.cross_length.Value/2), CurrentCamera.ViewportSize.Y/2) 
            
                CrosshairDown.From = Vector2.new(CurrentCamera.ViewportSize.X/2, CurrentCamera.ViewportSize.Y/2+(Options.cross_length.Value/2)) 
                CrosshairDown.To = Vector2.new(CurrentCamera.ViewportSize.X/2, CurrentCamera.ViewportSize.Y/2-(Options.cross_length.Value/2))

            else
                CrosshairDown.Visible = false
                CrosshairCross.Visible = false
            end

        else
            CrosshairDown.Visible = false
            CrosshairCross.Visible = false
        end

    end)
end
coroutine.wrap(makeCrosshair)()

-- Aimbot -- Complete and works well -- Still need to add smoothing
local aiming = false
local selectKey = Options.aim_key.Value
local fovcircle = Drawing.new("Circle")

fovcircle.Visible = Toggles.fov_Circle.Value
fovcircle.Radius = Options.circle_radius.Value
fovcircle.Color = Options.fovColor.Value
fovcircle.Thickness = 1
fovcircle.Filled = false
fovcircle.Transparency = 1

fovcircle.Position = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)

UIS.InputBegan:Connect(function(i)
    if i.KeyCode == Enum.KeyCode[Options.aim_key.Value] then
        aiming = true
        print("Aiming")
    end
end)

UIS.InputEnded:Connect(function(i)
    if i.KeyCode == Enum.KeyCode[Options.aim_key.Value] then
        aiming = false
        print("Not Aiming")
    end
end)

dwRunService.RenderStepped:Connect(function()
    
    local dist = math.huge -- controls the fov snap stuff
    local closest_char = nil

    fovcircle.Radius = Options.circle_radius.Value
    fovcircle.Color = Options.fovColor.Value
    fovcircle.Visible = Toggles.fov_Circle.Value

    
    if aiming and Toggles.aim_enabled.Value == true then

        for i,v in next, dwEntities:GetChildren() do 

            if v ~= dwLocalPlayer and
            v.Character and
            v.Character:FindFirstChild("HumanoidRootPart") and
            v.Character:FindFirstChild("Humanoid") and
            v.Character:FindFirstChild("Humanoid").Health > 0 then

                if v.Team ~= dwLocalPlayer.Team then

                    local char = v.Character
                    local char_part_pos, is_onscreen = dwCamera:WorldToViewportPoint(char[Options.aim_part.Value].Position)

                    if is_onscreen then

                        local mag = (Vector2.new(dwMouse.X, dwMouse.Y) - Vector2.new(char_part_pos.X, char_part_pos.Y)).Magnitude

                        if mag < dist and mag < Options.circle_radius.Value then

                            dist = mag
                            closest_char = char

                        end
                    end
                end
            end
        end

        if closest_char ~= nil and
        closest_char:FindFirstChild("HumanoidRootPart") and
        closest_char:FindFirstChild("Humanoid") and
        closest_char:FindFirstChild("Humanoid").Health > 0 then

            dwCamera.CFrame = CFrame.new(dwCamera.CFrame.Position, closest_char[Options.aim_part.Value].Position)

        end
    end
end)

-- Skin Changer
dwRunService.RenderStepped:Connect(function ()
    
    game:GetService("Players").LocalPlayer.PlayerData.Loadout[Options.loadout.Value].Primary.Skin.Value = Options.primary.Value
    game:GetService("Players").LocalPlayer.PlayerData.Loadout[Options.loadout.Value].Secondary.Skin.Value = Options.secondary.Value

end)

-- Render

dwRunService.RenderStepped:Connect(function ()
    
    local fovService = workspace[game.Players.LocalPlayer.Name][currentGun]["ACS_Modulo"].Variaveis.Settings
    local m =  require(fovService)

    m.ChangeFOV = {Options.player_fov.Value, 70}
    game:GetService("Workspace").Camera.FieldOfView = Options.player_fov.Value

end)

-- World

-- After the features / exploits

Library:Notify("Loaded Features & Exploits!")
