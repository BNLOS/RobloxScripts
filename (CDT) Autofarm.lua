local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
 vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 wait(1)
 vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


getgenv().Farm = true

local RaceLocation = Vector3.new(2198.93701, 638.532166, 1307.18494, -4.76837158e-05, -0.996190667, -0.0872024298, -1, 4.76837158e-05, 2.08243728e-06, 2.08243728e-06, 0.0872024298, -0.996190667)



local IsA = game.IsA
local function GetFromPlayerCar()
   for I,V in pairs(game:GetService("Workspace").Cars:GetDescendants()) do 
       if V.Name == "Owner" then 
           if V.Value == game.Players.LocalPlayer.Name then 
               return V.Parent.Parent
           end
       end
   end
   return "Not Find Car"
end

local function TpCar(Pos)
   for I,V in pairs(GetFromPlayerCar():GetDescendants()) do 
       if IsA(V,"BasePart") then 
           if getgenv().Farm == true then
               local Tween = game:GetService("TweenService")
               Tween:create(V,TweenInfo.new(1),{CFrame = CFrame.new(Pos)}):Play()
           end
       end
   end
end


local function RaceFarm()
   for I,V in pairs(game:GetService("Workspace").Races.Race.Checkpoints:GetDescendants()) do 
       if V.Name == "IsActive" then
           if game:GetService("Workspace").Races.Race.Script.RaceProgress.Value == true then
               if game:GetService("Workspace").Races.Race.GoalCheckpoint.IsActive.Value == true then
               TpCar(V.Parent.Parent.Parent:FindFirstChild("GoalCheckpoint").GoalCheckpoint.Position + Vector3.new(0,-50,0))
               elseif V.Value == true then
               TpCar(V.Parent:FindFirstChild("Checkpoint").Position + Vector3.new(0,-50,0)) 
               end
           end
       end
   end
end


local function StartRace()
   for I,V in pairs(game:GetService("Workspace").Races.Race.Checkpoints:GetDescendants()) do 
       if V.Name == "IsActive" then 
           if V.Value == true or game:GetService("Workspace").Races.Race.GoalCheckpoint.IsActive.Value == true then 
               return true
           end
       end
   end
   return false
end


while getgenv().Farm == true do wait() 
   for I,V in pairs(GetFromPlayerCar():GetDescendants()) do 
       if V.Name == "Engine" and IsA(V,"BasePart") then 
           TpCar(RaceLocation)
           workspace.Races.RaceHandler.StartLobby:FireServer("Race")
           local args = {
           [1] = "5",
           [2] = "Vote"
           }
           workspace.Races.Race.Script.Vote:FireServer(unpack(args))
           if StartRace() == true  then
           RaceFarm()
           end
       end
   end
end
