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
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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

-- Minimize Butonu
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 1, 0)
minimizeButton.Position = UDim2.new(1, -70, 0, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
minimizeButton.BorderSizePixel = 0
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 20
minimizeButton.ZIndex = 4
minimizeButton.Parent = titleBar

-- Minimize/Maximize işlemi
local minimized = false
local elementsToToggle = {label, greenLine, frame}

minimizeButton.MouseButton1Click:Connect(function()
	minimized = not minimized

	if minimized then
		label.Visible = false
		greenLine.Visible = false
		frame.Size = UDim2.new(0, 420, 0, 30)
		minimizeButton.Text = "+"
	else
		label.Visible = true
		greenLine.Visible = true
		frame.Size = UDim2.new(0, 420, 0, 280)
		minimizeButton.Text = "-"
	end
end)

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
    "This GUI has been confiscated.\nPlease behave. - DConroyN",
    "Another one bites the dust. - DConroyN",
    "Patched, packed, and sent to oblivion. - DConroyN",
    "Oops, this script went bye-bye. - DConroyN",
    "You seriously trusted this GUI? - DConroyN",
    "Shut down faster than your Wi-Fi. - DConroyN",
    "Nice try. It’s gone now. - DConroyN",
    "Mission failed successfully. - DConroyN",
    "Consider this your friendly uninstall. - DConroyN",
    "You didn’t see anything. - DConroyN",
    "It lived fast, died faster. - DConroyN",
    "Rest in pixels! - DConroyN",
    "Poof! It vanished. - DConroyN",
    "Replaced with nothing. You're welcome. - DConroyN",
    "Your exploit dreams end here. - DConroyN",
    "Error 404: GUI not found (anymore). - DConroyN",
    "This isn’t what you think it is. - DConroyN",
    "C00lGui? More like C00lGone. - DConroyN",
    "Don't cry, it's just code. - DConroyN",
    "Gone like your last brain cell. - DConroyN",
    "This GUI ran into a problem...\nPlease Dont Try Again. - DConroyN",
    "Imagine thinking this would work. - DConroyN",
    "Even viruses run from this GUI. - DConroyN",
    "Restored balance to the server. - DConroyN",
    "Hacked? More like whacked. - DConroyN",
    "This GUI has been terminated\nwith extreme prejudice. - DConroyN",
    "Tried to cheat, now you meet defeat. - DConroyN",
    "Patch notes: GUI destroyed. - DConroyN",
    "That GUI? I ate it. - DConroyN",
    "Oopsie! That’s gone. - DConroyN",
    "The script fought the law… the law won. - DConroyN",
    "No GUI for you. - DConroyN",
    "Trolled, rolled, and control-deleted. - DConroyN",
    "Guess what? It’s dead. - DConroyN",
    "Is it gone? Yes. Is it coming back? Nope. - DConroyN",
    "We nuked it for your safety. - DConroyN",
    "The GUI has officially been disrespected. - DConroyN",
    "This exploit took an L. - DConroyN",
    "Even the backdoor begged for mercy. - DConroyN",
    "Nice GUI. Would be a shame if someone...\ndeleted it. - DConroyN",
    "It’s not gone. It’s obliterated. - DConroyN",
    "One less cringe GUI. - DConroyN",
    "Your GUI has entered the shadow realm. - DConroyN",
    "Do not resuscitate. - DConroyN",
    "Built to break. Broke perfectly. - DConroyN",
    "Nothing personal, kid. - DConroyN",
    "Destroyed with style. - DConroyN",
    "It died how it lived—badly coded. - DConroyN",
    "Auto-cleanup initiated. - DConroyN",
    "We spared you the embarrassment. - DConroyN",
    "Patch complete. You're welcome. - DConroyN",
    "Was it useful? Doesn’t matter now. - DConroyN",
    "That script was a crime against Lua. - DConroyN",
    "Don’t worry, it’s better this way. - DConroyN",
    "You’re not hacked, just trolled. - DConroyN",
    "If you loved it, let it go. - DConroyN",
    "This GUI has been deleted for your sins. - DConroyN",
    "No more cringe. - DConroyN",
    "We uninstalled the cringe. - DConroyN",
    "Too powerful for this world. Gone. - DConroyN",
    "Self-destruction complete. - DConroyN",
    "Hacked into nonexistence. - DConroyN",
    "You blinked, it vanished. - DConroyN",
    "GUI was trash. I took it out. - DConroyN",
    "Another failed script... How sad. - DConroyN",
    "Sometimes things just disappear.\n-this. - DConroyN",
    "I saw, I judged, I deleted. - DConroyN",
    "This isn’t the script you’re\n-looking for. - DConroyN",
    "Cheat detected. GUI ejected. - DConroyN",
    "This GUI went to a better place. - DConroyN",
    "Unlucky. Try not using exploits next time. - DConroyN",
    "Silently wiped while you blinked. - DConroyN",
    "Don’t worry, the trash took itself out. - DConroyN",
    "GUI got ratio’d. - DConroyN",
    "It's gone. You can’t undo this. - DConroyN",
    "Oops. This script caught a virus. - DConroyN",
    "One less threat to Roblox society. - DConroyN",
    "Congratulations, your script expired. - DConroyN",
    "Clown GUI status: Terminated. - DConroyN",
    "RIP script: 202X–202X. - DConroyN",
    "Game cleaned. Exploit removed. - DConroyN",
    "Script was sus. We ejected it. - DConroyN",
    "No backups. No mercy. - DConroyN",
    "Glory to the anti-exploit resistance. - DConroyN",
    "Next time: just don’t. - DConroyN",
    "Your GUI tried. It failed. - DConroyN",
    "Eliminated in one line of code. - DConroyN",
    "Nothing of value was lost. - DConroyN",
    "Your script has been deleted with prejudice.\n- DConroyN",
    "This GUI got kicked out the back door. - DConroyN",
    "Better luck next patch. - DConroyN",
    "The GUI couldn’t handle my swagger. - DConroyN",
    "Welcome to the blacklisted zone. - DConroyN",
    "All your GUI are belong to me. - DConroyN",
    "Peace was never an option. - DConroyN",
    "You pressed the wrong button,\nI pressed delete. - DConroyN",
    "Don't hate the player, hate the GUI. - DConroyN",
    "Today’s lesson: Don't run random GUIs. - DConroyN",
    "System purge complete. - DConroyN",
    "This script is now a ghost. - DConroyN",
    "Press F to forget. - DConroyN",
    "Malicious code neutralized. - DConroyN",
    "Too edgy to live. - DConroyN",
    "Removed with extreme sarcasm. - DConroyN"
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
