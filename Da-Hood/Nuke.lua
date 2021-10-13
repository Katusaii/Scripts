-- [ MADE BY ! Lewis#0001 ] --
-- [ CASH NEEDED : 140000 - 140060 ] --
-- [ RESET TO TURN OFF ] --

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")

wait(2)

getgenv().Nuke = true
getgenv().BuyMask = true

local Amount = 0; -- DONT TOUCH THIS
local ActivateNukeKey = "Q"
local Player = game:GetService("Players").LocalPlayer;
local UserInput = game:GetService("UserInputService");
local CFRAME = Player.Character.HumanoidRootPart.CFrame;

function Notify(Text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Nuke",
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
    if Nuke then
        Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Grenade] - $700"].Head.CFrame + Vector3.new(0, -5, 0)
        Player.Character.Humanoid:ChangeState("StrafingNoPhysics")
        wait()
        if Amount ~= 200 then
            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Grenade] - $700"].ClickDetector)
        end
        wait()
        for _, v in pairs(Player.Backpack:GetChildren()) do
            if v.Name == "[Grenade]" then
                v.Parent = Player.Character
                Amount = Amount + 1
                print("Amount: "..Amount)
            end
        end
        if Amount == 200 then
            wait(1)
            Nuke = false
            Player.Character.HumanoidRootPart.CFrame = CFRAME
        end
    end
end)

UserInput.InputBegan:Connect(function(Key, Typing)
    if Typing then return end
    if Key.KeyCode == Enum.KeyCode[ActivateNukeKey] then
        for _, v in pairs(Player.Character:GetChildren()) do
            if v.Name == "[Grenade]" then
                v:Activate()
            end
        end
    end
end)

Player.Character.Humanoid.Died:Connect(function()
    Nuke = false
    Notify("Nuke has stopped!")
end)
