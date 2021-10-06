-- [ MADE BY ! Lewis#0001 ] --

local Player = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local arguments = {...}
    local method = getnamecallmethod() or get_namecall_method()
    if method == "FireServer" and self.Name == "MainEvent" then
        if arguments[1] == "CHECKER_1" or arguments[1] == "TeleportDetect" or arguments[1] == "OneMoreTime" then
            return wait(9e9)
        end
    end
    return nc(self, unpack(arguments))
end)
setreadonly(mt, true)

function Destroy()
    if Player.Character:FindFirstChild("") then
        Player.Character:FindFirstChild(""):Destroy()
    else
        if Player.Backpack:FindFirstChild("") then
            Player.Backpack:FindFirstChild(""):Destroy()
        end
    end
end

RunService.Heartbeat:Connect(function()
    if Player.Character:FindFirstChildWhichIsA("Script"):FindFirstChildWhichIsA("LocalScript") then
        Player.Character:FindFirstChildWhichIsA("Script"):FindFirstChildWhichIsA("LocalScript").Disabled = true
    end
    Destroy()
end)
