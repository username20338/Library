--// HenriqueHub - RedzHub Style com botão expansível

local Player = game.Players.LocalPlayer

-- Interface
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "HenriqueHub"

-- Botão de expansão (inferior esquerdo)
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Parent = gui
toggleButton.Size = UDim2.new(0, 120, 0, 40)
toggleButton.Position = UDim2.new(0, 10, 1, -50)
toggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 50)
toggleButton.Text = "📂 HenriqueHub"
toggleButton.TextColor3 = Color3.fromRGB(0, 255, 255)
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 16
toggleButton.Active = true
toggleButton.Draggable = true

-- Janela Principal (menu)
local main = Instance.new("Frame")
main.Name = "MainFrame"
main.Parent = gui
main.Size = UDim2.new(0, 320, 0, 220)
main.Position = UDim2.new(0.05, 0, 0.4, 0)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
main.Visible = false
main.Active = true
main.Draggable = true

-- Título
local title = Instance.new("TextLabel")
title.Parent = main
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "⚡ HenriqueHub - Main"
title.TextColor3 = Color3.fromRGB(0, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 22

-- WalkSpeed Hack
local speed = Instance.new("TextButton")
speed.Parent = main
speed.Position = UDim2.new(0.1, 0, 0.3, 0)
speed.Size = UDim2.new(0.8, 0, 0, 40)
speed.BackgroundColor3 = Color3.fromRGB(20, 20, 50)
speed.Text = "Ativar WalkSpeed Hack"
speed.TextColor3 = Color3.fromRGB(0, 255, 255)
speed.Font = Enum.Font.Gotham
speed.TextSize = 18

speed.MouseButton1Click:Connect(function()
	local humanoid = Player.Character and Player.Character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		humanoid.WalkSpeed = 100
		speed.Text = "WalkSpeed: 100 ⚡"
	else
		speed.Text = "Humanoid não encontrado"
	end
end)

-- Developer Zone (visual apenas)
local devbtn = Instance.new("TextButton")
devbtn.Parent = main
devbtn.Position = UDim2.new(0.1, 0, 0.6, 0)
devbtn.Size = UDim2.new(0.8, 0, 0, 40)
devbtn.BackgroundColor3 = Color3.fromRGB(50, 0, 70)
devbtn.Text = "🧬 Developer Zone"
devbtn.TextColor3 = Color3.fromRGB(255, 100, 255)
devbtn.Font = Enum.Font.Gotham
devbtn.TextSize = 18

local devFrame = Instance.new("Frame")
devFrame.Parent = gui
devFrame.Size = UDim2.new(0, 260, 0, 150)
devFrame.Position = UDim2.new(0.5, -130, 0.5, -75)
devFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
devFrame.Visible = false
devFrame.Active = true
devFrame.Draggable = true

local devTitle = Instance.new("TextLabel")
devTitle.Parent = devFrame
devTitle.Size = UDim2.new(1, 0, 0, 30)
devTitle.BackgroundTransparency = 1
devTitle.Text = "🧬 Developer Zone"
devTitle.TextColor3 = Color3.fromRGB(255, 100, 255)
devTitle.Font = Enum.Font.GothamBold
devTitle.TextSize = 20

local devInfo = Instance.new("TextLabel")
devInfo.Parent = devFrame
devInfo.Position = UDim2.new(0, 0, 0.4, 0)
devInfo.Size = UDim2.new(1, 0, 0.5, 0)
devInfo.BackgroundTransparency = 1
devInfo.Text = "Visual Developer Zone do HenriqueHub."
devInfo.TextColor3 = Color3.fromRGB(200, 200, 255)
devInfo.Font = Enum.Font.Gotham
devInfo.TextSize = 14
devInfo.TextWrapped = true

devbtn.MouseButton1Click:Connect(function()
	devFrame.Visible = not devFrame.Visible
end)

-- Abrir/Fechar Menu
toggleButton.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible
end)
