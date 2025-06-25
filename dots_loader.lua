-- SETTINGS
local KEY = "DOTS2025"
local SCRIPT_URL = "https://raw.githubusercontent.com/depthso/Grow-a-Garden/refs/heads/main/autofarm.lua"
local KEY_LINK = "https://link-target.net/1364413/pyANZSlm2sqP"

-- GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 220)
frame.Position = UDim2.new(0.5, -150, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "🔒 Enter Script Key"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 20

local textbox = Instance.new("TextBox", frame)
textbox.Size = UDim2.new(1, -20, 0, 30)
textbox.Position = UDim2.new(0, 10, 0, 60)
textbox.PlaceholderText = "Paste your key here"
textbox.Text = ""
textbox.Font = Enum.Font.Gotham
textbox.TextSize = 16
textbox.TextColor3 = Color3.new(1, 1, 1)
textbox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local status = Instance.new("TextLabel", frame)
status.Size = UDim2.new(1, -20, 0, 30)
status.Position = UDim2.new(0, 10, 0, 100)
status.Text = "🔑 Get the key to proceed"
status.TextColor3 = Color3.new(1, 1, 1)
status.BackgroundTransparency = 1
status.Font = Enum.Font.Gotham
status.TextSize = 14

-- GET KEY BUTTON
local getKeyButton = Instance.new("TextButton", frame)
getKeyButton.Size = UDim2.new(0.5, -15, 0, 30)
getKeyButton.Position = UDim2.new(0, 10, 0, 150)
getKeyButton.Text = "🔑 Get Key"
getKeyButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
getKeyButton.TextColor3 = Color3.new(1, 1, 1)
getKeyButton.Font = Enum.Font.Gotham
getKeyButton.TextSize = 16

getKeyButton.MouseButton1Click:Connect(function()
    setclipboard(KEY_LINK)
    status.Text = "📋 Link copied! Open your browser to get the key."
end)

-- SUBMIT BUTTON
local submitButton = Instance.new("TextButton", frame)
submitButton.Size = UDim2.new(0.5, -15, 0, 30)
submitButton.Position = UDim2.new(0.5, 5, 0, 150)
submitButton.Text = "▶️ Submit"
submitButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
submitButton.TextColor3 = Color3.new(1, 1, 1)
submitButton.Font = Enum.Font.GothamBold
submitButton.TextSize = 16

submitButton.MouseButton1Click:Connect(function()
    if textbox.Text == KEY then
        status.Text = "✅ Key accepted! Loading script..."
        wait(1)
        gui:Destroy()
        loadstring(game:HttpGet(SCRIPT_URL))()
    else
        status.Text = "❌ Invalid key. Use 'Get Key' to obtain it."
    end
end)
