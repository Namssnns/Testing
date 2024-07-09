local InputService = game:GetService("UserInputService")
local TS = game:GetService("TweenService")
local Opened = true
local CallBack = nil


local ScreenGui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
ScreenGui.Name = "Shovel Masters Hack Client"

local Main = Instance.new("Frame",ScreenGui)
Main.Size = UDim2.new(0, 385,0, 419)
Main.Position = UDim2.new(0.5,0,0.5,0)
Main.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
Main.Name = "Main"
Main.AnchorPoint = Vector2.new(0.5,0.5)

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

local Size = Main.Size




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

InputService.InputBegan:Connect(function(object,processed)
	if InputService:GetFocusedTextBox() then return end
	if (object.KeyCode == Enum.KeyCode.Z) then
		print(CallBack)
		if Opened then
			
				
				Opened = false
			Main:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,1,true)
			for i,v in pairs(Main:GetDescendants()) do
				if v:IsA("Frame") or v:IsA("TextBox") or v:IsA("TextButton") then
					v.Visible = false
				end
				
				
			end
		else
			Main:TweenSize(Size,Enum.EasingDirection.Out,Enum.EasingStyle.Sine,1,true)
			for i,v in pairs(Main:GetDescendants()) do
				if v:IsA("Frame") or v:IsA("TextBox") or v:IsA("TextButton") then
					v.Visible = true
				end
				end
			Opened = true
			end
	
			
		
		
	end
	

end)




