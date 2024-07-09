
local ScreenGui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
ScreenGui.Name = "Shovel Masters Hack Client"

local Main = Instance.new("Frame",ScreenGui)
Main.Position = UDim2.new(0.365,0,0.135,0)
Main.Size = UDim2.new(0, 385,0, 419)
Main.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
Main.Name = "Main"

local UiCornerTemp = Instance.new("UICorner",Main)
UiCornerTemp.CornerRadius = UDim.new(0,32)

local UiStrokeTemp = Instance.new("UIStroke")
UiStrokeTemp.Thickness = 3


local GiveWinsFrame = Instance.new("Frame",Main)
GiveWinsFrame.BackgroundTransparency = 1
GiveWinsFrame.Position = UDim2.new(0.039, 0,0.174, 0)
GiveWinsFrame.Size = UDim2.new(0,299,0,57)
GiveWinsFrame.Name = "GiveWinsFrame"

local GiveWinsButton = Instance.new("TextButton",GiveWinsFrame)
GiveWinsButton.Name = "GiveWins"
GiveWinsButton.Size = UDim2.new(0,100,0,50)
GiveWinsButton.Position = UDim2.new(0,0,0,0)
GiveWinsButton.Text = "Give Wins"
GiveWinsButton.TextScaled = true
GiveWinsButton.Font = Enum.Font.FredokaOne
GiveWinsButton.TextColor3 = Color3.new(255,255,255)
UiStrokeTemp:Clone().Parent = GiveWinsButton
UiCornerTemp:Clone().Parent = GiveWinsButton

local GiveWinsTextBox = Instance.new("TextBox",GiveWinsFrame)
GiveWinsTextBox.Name = "GiveTextBox"
GiveWinsTextBox.Position = UDim2.new(0.492,0,0,0)
GiveWinsTextBox.Size = UDim2.new(0,200,0,50)
UiCornerTemp:Clone().Parent = GiveWinsTextBox

local GivePowerFrame = Instance.new("Frame",Main)
GivePowerFrame.BackgroundTransparency = 1
GivePowerFrame.Position = UDim2.new(0.068, 0,0.348, 0)
GivePowerFrame.Size = UDim2.new(0,299,0,57)
GivePowerFrame.Name = "GivePowerFrame"

local GivePowerButton = Instance.new("TextButton",GivePowerFrame)
GivePowerButton.Name = "GivePower"
GivePowerButton.Size = UDim2.new(0,100,0,50)
GivePowerButton.Position = UDim2.new(0,0,0,0)
GivePowerButton.Text = "Give Power"
GivePowerButton.TextScaled = true
GivePowerButton.Font = Enum.Font.FredokaOne
GivePowerButton.TextColor3 = Color3.new(255,255,255)
UiStrokeTemp:Clone().Parent = GivePowerButton
UiCornerTemp:Clone().Parent = GivePowerButton

local GivePowerTextBox = Instance.new("TextBox",GivePowerFrame)
GivePowerTextBox.Name = "GivePowerTextBox"
GivePowerTextBox.Position = UDim2.new(0.492,0,0,0)
GivePowerTextBox.Size = UDim2.new(0,200,0,50)
UiCornerTemp:Clone().Parent = GivePowerTextBox






GiveWinsButton.MouseButton1Click:Connect(function()
	if GiveWinsTextBox.Text then

		local args = {
			[1] = GiveWinsTextBox.Text
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("changeWins"):FireServer(unpack(args))



	end
end)




GivePowerButton.MouseButton1Click:Connect(function()
	if GivePowerTextBox.Text then
		local args = {
			[1] = GivePowerTextBox.Text,
			[2] = 302984652537821
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("changePower"):FireServer(unpack(args))


	end
end)




