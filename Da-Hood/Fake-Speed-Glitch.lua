-- [ MADE BY ! Lewis#0001 ] --
-- [ MUST BE SKINNY FOR THIS TO WORK ] --

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInput = game:GetService("UserInputService");
local RunService = game:GetService("RunService")
local Player = game:GetService("Players").LocalPlayer
local SpeedGlitch = false;

local GreetAnimation = Instance.new("Animation", ReplicatedStorage)
GreetAnimation.AnimationId = "rbxassetid://3189777795"

function Unequip()
    for _, v in pairs(Player.Character:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = Player.Backpack
        end
    end
end

UserInput.InputBegan:Connect(function(Key, Typing)
    if Typing then return end
    if Key.KeyCode == Enum.KeyCode.Q then
        SpeedGlitch = not SpeedGlitch
        if SpeedGlitch then
            Player.Character.Humanoid:LoadAnimation(GreetAnimation):Play()
            wait(0.45)
            Unequip()
            wait(1)
            Player.Backpack:FindFirstChild("Wallet").Parent = Player.Character
        else
            Unequip()
        end
    end
end)

RunService.Heartbeat:Connect(function()
    if SpeedGlitch then
        keypress(0x49)
        keyrelease(0x49)
        keypress(0x4F)
        keyrelease(0x4F)
    end
end)
