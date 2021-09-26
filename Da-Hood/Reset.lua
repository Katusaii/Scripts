local DeleteParts = {"LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "UpperTorso", "LowerTorso", "Head", "Humanoid"};

function Destroy()
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if table.find(DeleteParts, v.Name) then
            v:Destroy()
        end
    end
end

Destroy()
