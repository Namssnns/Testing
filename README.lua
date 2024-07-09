

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


GiveWinsButton.MouseButton1Click:Connect(function()
	if GiveWinsTextBox.Text then

		local args = {
			[1] = GiveWinsTextBox.Text
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("changeWins"):FireServer(unpack(args))



	end
end)




