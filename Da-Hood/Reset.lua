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
