-- 🔐 Dots' Linkvertise-Protected Loader

local KEY = "DOTS2025" -- ← Use your actual key from Pastebin here
local SCRIPT_URL = "https://raw.githubusercontent.com/depthso/Grow-a-Garden/refs/heads/main/autofarm.lua"

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- GUI
local gui = Instance.new("ScreenGui", playerGui)
gui.Name = "DotsKeyLoader"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 350, 0, 200)
frame.Position = UDim2.new(0.5, -175, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "🔑 Enter Access Key for Dots' Script"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 14

local textbox = Instance.new("TextBox", frame)
textbox.Size = UDim2.new(1, -20, 0, 40)
textbox.Position = UDim2.new(0, 10, 0, 40)
textbox.PlaceholderText = "Paste your key here"
textbox.Text = ""
textbox.BackgroundColor3 = Color3.fromRGB(60,60,60)
textbox.TextColor3 = Color3.new(1,1,1)
textbox.Font = Enum.Font.Gotham
textbox.TextSize = 18

local status = Instance.new("TextLabel", frame)
status.Size = UDim2.new(1, -20, 0, 30)
status.Position = UDim2.new(0, 10, 0, 90)
status.Text = ""
status.TextColor3 = Color3.fromRGB(255,70,70)
status.BackgroundTransparency = 1
status.Font = Enum.Font.Gotham
status.TextSize = 14

local button = Instance.new("TextButton", frame)
button.Size = UDim2.new(1, -20, 0, 40)
button.Position = UDim2.new(0, 10, 0, 130)
button.Text = "Unlock Script"
button.BackgroundColor3 = Color3.fromRGB(80,80,80)
button.TextColor3 = Color3.new(1,1,1)
button.Font = Enum.Font.GothamBlack
button.TextSize = 20

button.MouseButton1Click:Connect(function()
    if textbox.Text == KEY then
        status.Text = "✅ Key accepted! Executing script..."
        wait(1)
        gui:Destroy()
        loadstring(game:HttpGet(SCRIPT_URL))()
    else
        status.Text = "❌ Invalid key. Get yours at: link-target.net/1364413/pyANZSlm2sqP"
    end
end)
