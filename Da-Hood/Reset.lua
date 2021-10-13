-- [ MADE BY ! Lewis#0001 ] --

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")

local DeleteParts = {"LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "UpperTorso", "LowerTorso", "Head", "Humanoid"};
local Player = game:GetService("Players").LocalPlayer

function Destroy()
    for _, v in pairs(Player.Character:GetChildren()) do
        if table.find(DeleteParts, v.Name) then
            v:Destroy()
        end
    end
end

Destroy()
