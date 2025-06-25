--[[
  Protected Loader by DotsAI 🔒
  Tier 1 Obfuscation + Anti-Leak Layer
]]

local _0D0 = "DOTS2025"
local _0L1 = "https://link-target.net/1364413/pyANZSlm2sqP"
local _0X2 = "https://raw.githubusercontent.com/depthso/Grow-a-Garden/refs/heads/main/autofarm.lua"

local _G3 = game:GetService("CoreGui")
local _U4 = Instance.new("ScreenGui", _G3)
_U4.Name = "DOTS_LOADER_"..math.random(1111,9999)

local function __selfDestruct(reason)
    warn("Loader self-destructed: " .. reason)
    if _U4 then _U4:Destroy() end
end

local _W5 = Instance.new("Frame", _U4)
_W5.Size = UDim2.new(0, 300, 0, 220)
_W5.Position = UDim2.new(0.5, -150, 0.5, -110)
_W5.BackgroundColor3 = Color3.fromRGB(15,15,15)
_W5.BorderSizePixel = 0

local _S6 = Instance.new("TextLabel", _W5)
_S6.Size = UDim2.new(1, 0, 0, 35)
_S6.Text = "🔐 Script Unlocker"
_S6.Font = Enum.Font.GothamBold
_S6.TextColor3 = Color3.fromRGB(255,255,255)
_S6.BackgroundTransparency = 1
_S6.TextSize = 18

local _I7 = Instance.new("TextBox", _W5)
_I7.Size = UDim2.new(1, -20, 0, 30)
_I7.Position = UDim2.new(0, 10, 0, 50)
_I7.PlaceholderText = "Enter key here"
_I7.Text = ""
_I7.Font = Enum.Font.Gotham
_I7.TextSize = 16
_I7.TextColor3 = Color3.fromRGB(255,255,255)
_I7.BackgroundColor3 = Color3.fromRGB(35,35,35)

local _M8 = Instance.new("TextLabel", _W5)
_M8.Size = UDim2.new(1, -20, 0, 28)
_M8.Position = UDim2.new(0, 10, 0, 90)
_M8.Text = "🔑 Required key to continue."
_M8.TextColor3 = Color3.fromRGB(200,200,200)
_M8.Font = Enum.Font.Gotham
_M8.TextSize = 14
_M8.BackgroundTransparency = 1

local _G9 = Instance.new("TextButton", _W5)
_G9.Size = UDim2.new(0.5, -12, 0, 30)
_G9.Position = UDim2.new(0, 10, 0, 140)
_G9.Text = "🔑 Get Key"
_G9.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
_G9.TextColor3 = Color3.new(1,1,1)
_G9.Font = Enum.Font.Gotham
_G9.TextSize = 16

_G9.MouseButton1Click:Connect(function()
    pcall(function()
        setclipboard(_0L1)
        _M8.Text = "📋 Copied! Open browser to get key."
    end)
end)

local _T0 = Instance.new("TextButton", _W5)
_T0.Size = UDim2.new(0.5, -12, 0, 30)
_T0.Position = UDim2.new(0.5, 2, 0, 140)
_T0.Text = "▶️ Submit"
_T0.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
_T0.TextColor3 = Color3.new(1,1,1)
_T0.Font = Enum.Font.GothamBold
_T0.TextSize = 16

local tamperCheck = (debug and debug.getinfo) and true or false
if not tamperCheck then
    return __selfDestruct("Tamper detected (debug info missing)")
end

local start = tick()
_T0.MouseButton1Click:Connect(function()
    if tick() - start < 2 then
        return __selfDestruct("Script triggered too fast (bot or injection)")
    end
    if _I7.Text == _0D0 then
        _M8.Text = "✅ Key accepted! Loading..."
        wait(1)
        _U4:Destroy()
        loadstring(game:HttpGet(_0X2))()
    else
        _M8.Text = "❌ Wrong key. Use 'Get Key' to retrieve it."
    end
end)
