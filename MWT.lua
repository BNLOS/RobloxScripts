local venuslock = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ExplosiveBullet = Instance.new("TextButton")
local Killshot = Instance.new("TextButton")
local OpGun = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Close = Instance.new("TextButton")

--Properties:

venuslock.Name = "venuslock"
venuslock.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
venuslock.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = venuslock
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.new(0.517647, 0.419608, 0.121569)
Main.BackgroundTransparency = 0.30000001192093
Main.Position = UDim2.new(0.734545469, 0, 0.462416291, 0)
Main.Size = UDim2.new(0, 394, 0, 96)

ExplosiveBullet.Name = "ExplosiveBullet"
ExplosiveBullet.Parent = Main
ExplosiveBullet.BackgroundColor3 = Color3.new(0, 0, 0)
ExplosiveBullet.Position = UDim2.new(0, 0, 0.310416549, 0)
ExplosiveBullet.Size = UDim2.new(0, 130, 0, 36)
ExplosiveBullet.Style = Enum.ButtonStyle.RobloxButton
ExplosiveBullet.Font = Enum.Font.SourceSans
ExplosiveBullet.Text = "Enable Explosive Bullet"
ExplosiveBullet.TextColor3 = Color3.new(0.0392157, 0.847059, 0.647059)
ExplosiveBullet.TextSize = 14

Killshot.Name = "Killshot"
Killshot.Parent = ExplosiveBullet
Killshot.BackgroundColor3 = Color3.new(0, 0, 0)
Killshot.Position = UDim2.new(1.09639788, 0, -0.869841576, 0)
Killshot.Size = UDim2.new(0, 103, 0, 34)
Killshot.Style = Enum.ButtonStyle.RobloxButton
Killshot.Font = Enum.Font.SourceSans
Killshot.Text = "Instant Kill shot"
Killshot.TextColor3 = Color3.new(0.0392157, 0.847059, 0.647059)
Killshot.TextSize = 14

OpGun.Name = "OpGun"
OpGun.Parent = Killshot
OpGun.BackgroundColor3 = Color3.new(0, 0, 0)
OpGun.Position = UDim2.new(1.12851155, 0, -0.950700581, 0)
OpGun.Size = UDim2.new(0, 103, 0, 34)
OpGun.Style = Enum.ButtonStyle.RobloxButton
OpGun.Font = Enum.Font.SourceSans
OpGun.Text = "OP Gun"
OpGun.TextColor3 = Color3.new(0.0392157, 0.847059, 0.647059)
OpGun.TextSize = 14

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.new(0.152941, 0.686275, 0.333333)
TextLabel.Size = UDim2.new(0, 394, 0, 30)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 14

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 0, 0)
Close.Position = UDim2.new(0.913705587, 0, 0, 0)
Close.Size = UDim2.new(0, 34, 0, 29)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true

-- Scripts:

local function FKISGVN_fake_script() -- ExplosiveBullet.LocalScript
local script = Instance.new('LocalScript', ExplosiveBullet)

local G = game.Players.LocalPlayer.Backpack:FindFirstChild("Handgun")
a = require(game.Players.LocalPlayer.Backpack.Handgun.Setting)

function cnotification(t, b, d)
game.StarterGui:SetCore("SendNotification", {
   Title = t;
   Text = b;
   Icon = "";
   Duration = d;
})
end

script.Parent.MouseButton1Click:Connect(function()
if G then
a.ExplosiveEnabled = true
cnotification('Explosive Bullet', 'Enabled', 5)
end
end)
end
coroutine.wrap(FKISGVN_fake_script)()
local function CVXJHAV_fake_script() -- Killshot.LocalScript
local script = Instance.new('LocalScript', Killshot)

local G = game.Players.LocalPlayer.Backpack:FindFirstChild("Handgun")
a = require(game.Players.LocalPlayer.Backpack.Handgun.Setting)

function cnotification(t, b, d)
game.StarterGui:SetCore("SendNotification", {
   Title = t;
   Text = b;
   Icon = "";
   Duration = d;
})
end


script.Parent.MouseButton1Click:Connect(function()
if G then
a.BaseDamage = math.huge
cnotification('Instant Kill', 'Enabled', 5)
end
end)
end
coroutine.wrap(CVXJHAV_fake_script)()
local function YVCIG_fake_script() -- OpGun.LocalScript
local script = Instance.new('LocalScript', OpGun)

-- credit to Staylin for this script Explosive gun bOOm--
local G = game.Players.LocalPlayer.Backpack:FindFirstChild("Handgun")
a = require(game.Players.LocalPlayer.Backpack.Handgun.Setting)


function cnotification(t, b, d)
game.StarterGui:SetCore("SendNotification", {
   Title = t;
   Text = b;
   Icon = "";
   Duration = d;
})
end


script.Parent.MouseButton1Click:Connect(function()
if G then
a.Auto = true
a.Spread = 1
a.BaseDamage = 100
a.FireRate = 0
a.HeadshotDamageMultiplier = 100
a.Piercing=100
a.FlamingBullet = true
a.LifeSteal = 100
a.Knockback = 100
a.ExplosiveEnabled = true
a.Radius = 50
a.AmmoPerClip = math.huge
a.ShotgunEnabled = true
a.BulletPerShot = 40
cnotification('OP Gun by Staylin', 'Enabled', 5)
end
end)



end
coroutine.wrap(YVCIG_fake_script)()
local function SNSBRKA_fake_script() -- Main.MainGuiLoad
local script = Instance.new('LocalScript', Main)

function csystemchat(b)
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
   Text = b;
   Color = Color3.new(1,0,1);
   Font = Enum.Font.SourceSans;
   FontSize = Enum.FontSize.Size24;
})
end

csystemchat("Make sure your HandGun is unequipped before using the GUI otherwise it won't work.")

csystemchat("If you die, you have to re-Inject the script again")

end
coroutine.wrap(SNSBRKA_fake_script)()
local function OVPQG_fake_script() -- Close.LocalScript
local script = Instance.new('LocalScript', Close)

function cnotification(t, b, d)
game.StarterGui:SetCore("SendNotification", {
   Title = t;
   Text = b;
   Icon = "";
   Duration = d;
})
end

UserInputService = game:GetService("UserInputService")

script.Parent.MouseButton1Click:Connect(function()
script.Parent.Parent.Visible = false
cnotification('GUI has been closed', 'Press Letter Q to open', 2)
UserInputService.InputBegan:connect(function()
if UserInputService:IsKeyDown(Enum.KeyCode.Q) then
if script.Parent.Parent.Visible == false then
script.Parent.Parent.Visible = true
end
end
end)
end)

end
coroutine.wrap(OVPQG_fake_script)()
