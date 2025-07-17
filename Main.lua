local messages = {
    "GUI is unavailable. Please touch grass instead 🌱\n- DConroyN",
    "You really tried to run this?\nLMAO. DConroyN shut it down.",
    "We cleaned up this mess for you.\nYou're welcome - DConroyN",
    "Oops! Looks like your favorite GUI took an L...\nClosed by DConroyN 😎"
}

local message = messages[math.random(1, #messages)]

local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
local PlayerGui = player:WaitForChild("PlayerGui")
local UIS = game:GetService("UserInputService")

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "DConroyNTrollGui"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = PlayerGui

-- Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.35, 0)
frame.Position = UDim2.new(0.25, 0, 0.325, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
frame.Parent = gui

-- Title Bar (sürüklenebilir alan)
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleBar.BorderSizePixel = 0
titleBar.Parent = frame

-- X Butonu (title bar'a taşındı)
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundColor3 = Color3.new(0, 0, 0)
closeButton.BorderColor3 = Color3.fromRGB(0, 255, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 18
closeButton.Parent = titleBar

closeButton.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

-- Sürükleme sistemi
local dragging = false
local dragInput, dragStart, startPos

titleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

titleBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

UIS.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		                           startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

-- Mesaj Label
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 1, -40)
label.Position = UDim2.new(0, 10, 0, 35)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.new(1, 1, 1)
label.Font = Enum.Font.GothamBlack
label.TextSize = 22
label.TextWrapped = true
label.TextXAlignment = Enum.TextXAlignment.Center
label.TextYAlignment = Enum.TextYAlignment.Center
label.Text = message
label.Parent = frame
