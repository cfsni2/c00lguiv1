local messages = {
    "GUI is unavailable. Please touch grass instead \n- DConroyN",
    "You really tried to run this?\nLMAO. DConroyN shut it down.",
    "We cleaned up this mess for you.\nYou're welcome - DConroyN",
    "Oops! Looks like your favorite GUI took an L...\nClosed by DConroyN "
}

local message = messages[math.random(1, #messages)]

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "DConroyNTrollGui"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.25, 0)
frame.Position = UDim2.new(0.25, 0, 0.375, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
frame.Parent = gui

-- Text
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 1, -20)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.new(1, 1, 1)
label.Font = Enum.Font.GothamBlack
label.TextSize = 22
label.TextWrapped = true
label.TextXAlignment = Enum.TextXAlignment.Center
label.TextYAlignment = Enum.TextYAlignment.Center
label.Text = "Checking GUI status..."
label.Parent = frame

-- Kontrol: Eski c00lgui hâlâ çalışıyor mu?
local success, result = pcall(function()
	return game:HttpGet("https://raw.githubusercontent.com/cfsmi2/c00lguiv1/refs/heads/main/Main.lua")
end)

if success and result and #result > 10 then
	label.Text = "This GUI is still online... 😒"
	label.TextColor3 = Color3.fromRGB(255, 255, 100)
else
	label.Text = message
end
