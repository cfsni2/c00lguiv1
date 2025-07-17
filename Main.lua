local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "TrollGUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

-- Ana Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 420, 0, 280)
frame.Position = UDim2.new(0.5, -210, 0.5, -140)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 5 -- Daha kalın border
frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
frame.ZIndex = 1
frame.Active = true
frame.Draggable = false
frame.Parent = gui

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleBar.BorderSizePixel = 0
titleBar.ZIndex = 2
titleBar.Parent = frame

-- Yeşil Alt Çizgi
local greenLine = Instance.new("Frame")
greenLine.Size = UDim2.new(1, 0, 0, 5)
greenLine.Position = UDim2.new(0, 0, 0, 30)
greenLine.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
greenLine.BorderSizePixel = 0
greenLine.ZIndex = 3
greenLine.Parent = frame

-- Başlık Yazısı
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 200, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "TheConroyGui"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 20
titleLabel.ZIndex = 4
titleLabel.Parent = titleBar

-- Kapatma Butonu
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 1, 0)
closeButton.Position = UDim2.new(1, -35, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
closeButton.BorderSizePixel = 0 -- Border yok
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20
closeButton.ZIndex = 4
closeButton.Parent = titleBar

-- Kapatma işlevi
closeButton.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

-- İçerik Label
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 1, -40)
label.Position = UDim2.new(0, 10, 0, 40)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextWrapped = true
label.Font = Enum.Font.GothamBold
label.TextSize = 20
label.ZIndex = 2
label.Parent = frame

-- Rastgele mesajlar
local messages = {
	"☠️ Sistem hatası... Siliniyor gibi yap...",
	"🔥 Bu GUI'yi kapatırsan daha kötüsü olur!",
	"😂 Ne bekliyordun? Gerçek mi sandın?",
	"👀 Biri seni izliyor olabilir...",
	"🧠 C00lGui? Daha çok TROLLGui!"
}
label.Text = messages[math.random(1, #messages)]

-- Title bar’ı sürüklenebilir yap
local dragging = false
local dragStart, startPos

titleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position
	end
end)

titleBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)
