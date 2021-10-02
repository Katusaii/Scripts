-- [ MADE BY ! Lewis#0001 ] --
-- [ CASH NEEDED : 2000 - 2060 ] --
-- [ CRASH LENGTH : 4 MINUTES 10 SECONDS ] --

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")

wait(2)

getgenv().Crash = true
getgenv().BuyMask = true

local Amount = 0;
local Percentage = 0;
local DeleteParts = {"LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "UpperTorso", "LowerTorso", "Head", "Humanoid"};
local Player = game:GetService("Players").LocalPlayer;

function Destroy()
    for _, v in pairs(Player.Character:GetChildren()) do
        if table.find(DeleteParts, v.Name) then
            v:Destroy()
        end
    end
end

function Notify(Text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Crash",
        Text = Text,
        Icon = "",
        Duration = 3,
    })
end

if BuyMask then
    Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Ninja Mask] - $60"].Head.CFrame
    wait(0.5)
    fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Ninja Mask] - $60"].ClickDetector)
    wait(0.25)
    Player.Backpack.Mask.Parent = Player.Character
    wait(0.25)
    Player.Character.Mask:Activate()
    wait(0.25)
    Player.Character["In-gameMask"].Handle:Destroy()
    wait(0.25)
    Player.Character.Mask.Parent = Player.Backpack
end

game:GetService("RunService").Stepped:Connect(function()
    if Crash then
        Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Starblox Latte] - $5"].Head.CFrame + Vector3.new(0, -5, 0)
        Player.Character.Humanoid:ChangeState("StrafingNoPhysics")
        wait()
        if Amount ~= 400 and Percentage ~= 100 then
            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Starblox Latte] - $5"].ClickDetector)
        end
        wait()
        for _, v in pairs(Player.Backpack:GetChildren()) do
            if v.Name == "[Starblox Latte]" then
                v.Parent = Player.Character
                Amount = Amount + 1
                Percentage = Percentage + 0.25
                print("Amount: "..Amount.." | ".."Percentage: "..Percentage.."%")
            end
        end
        if Amount == 400 and Percentage == 100 then
            wait(1)
            Destroy()
        end
    end
end)

Player.Character.Humanoid.Died:Connect(function()
    Crash = false
    Notify("Crash has stopped!")
end)
