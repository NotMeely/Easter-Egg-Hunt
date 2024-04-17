 local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local AutoCrate = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local LayOut3 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local LayOut2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local LayOut1 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
main.Position = UDim2.new(0.320872277, 0, 0.1746988, 0)
main.Size = UDim2.new(0, 437, 0, 324)
main.Active = true
main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = main

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.Size = UDim2.new(0, 437, 0, 50)
Title.Font = Enum.Font.DenkOne
Title.Text = "Script Made By Meely_ | Miners Haven"
Title.TextColor3 = Color3.fromRGB(255, 0, 4)
Title.TextSize = 20.000
Title.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Title

AutoCrate.Name = "AutoCrate"
AutoCrate.Parent = main
AutoCrate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoCrate.Position = UDim2.new(0.270022869, 0, 0.246913582, 0)
AutoCrate.Size = UDim2.new(0, 200, 0, 50)
AutoCrate.Font = Enum.Font.DenkOne
AutoCrate.Text = "AutoCrate"
AutoCrate.TextColor3 = Color3.fromRGB(255, 0, 4)
AutoCrate.TextSize = 20.000

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = AutoCrate

LayOut3.Name = "LayOut3"
LayOut3.Parent = main
LayOut3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LayOut3.Position = UDim2.new(0.270022869, 0, 0.768518507, 0)
LayOut3.Size = UDim2.new(0, 200, 0, 50)
LayOut3.Font = Enum.Font.DenkOne
LayOut3.Text = "Layout 3"
LayOut3.TextColor3 = Color3.fromRGB(255, 0, 4)
LayOut3.TextSize = 20.000

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = LayOut3

LayOut2.Name = "LayOut2"
LayOut2.Parent = main
LayOut2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LayOut2.Position = UDim2.new(0.52860409, 0, 0.540123463, 0)
LayOut2.Size = UDim2.new(0, 200, 0, 50)
LayOut2.Font = Enum.Font.DenkOne
LayOut2.Text = "Layout 2"
LayOut2.TextColor3 = Color3.fromRGB(255, 0, 4)
LayOut2.TextSize = 20.000

UICorner_5.CornerRadius = UDim.new(0, 12)
UICorner_5.Parent = LayOut2

LayOut1.Name = "LayOut1"
LayOut1.Parent = main
LayOut1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LayOut1.Position = UDim2.new(0.0274599381, 0, 0.540123463, 0)
LayOut1.Size = UDim2.new(0, 200, 0, 50)
LayOut1.Font = Enum.Font.DenkOne
LayOut1.Text = "Layout 1"
LayOut1.TextColor3 = Color3.fromRGB(255, 0, 4)
LayOut1.TextSize = 20.000

UICorner_6.CornerRadius = UDim.new(0, 12)
UICorner_6.Parent = LayOut1

-- Scripts:

local function YDJK_fake_script() -- Title.LocalScript 
	local script = Instance.new('LocalScript', Title)

	
	
	local delay2 = 0.5
	local TextLabel = script.Parent 
	while true do 
		TextLabel.TextColor3 = Color3.new(255, 0, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 0.333333, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0, 0.482353, 1)
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		wait(delay2) 
	end
	
end
coroutine.wrap(YDJK_fake_script)()
local function BPJWXT_fake_script() -- AutoCrate.RGBLocalScript 
	local script = Instance.new('LocalScript', AutoCrate)

	--LocalScript
	--put this script in a TextLabel
	
	local delay2 = 0.5
	local TextLabel = script.Parent 
	while true do 
		TextLabel.TextColor3 = Color3.new(255, 0, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 0.333333, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0, 0.482353, 1)
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		wait(delay2) 
	end
	
end
coroutine.wrap(BPJWXT_fake_script)()
local function PMAP_fake_script() -- AutoCrate.LocalScript 
	local script = Instance.new('LocalScript', AutoCrate)

	script.Parent.MouseButton1Click:connect(function()
		for _1,v1 in pairs(game.Workspace.Boxes:GetChildren()) do
			if v1:IsA("MeshPart") or v1:IsA("Part") then
				local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.CFrame
				wait(.1)
				firetouchinterest(v1,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
				firetouchinterest(v1,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
				wait(.1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
			end
		end
	
		game.Workspace.Boxes.ChildAdded:Connect(function(v1)
			wait(.5)
			if v1:IsA("MeshPart") or v1:IsA("Part") then
				local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.CFrame
				wait(.1)
				firetouchinterest(v1,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
				firetouchinterest(v1,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
				wait(.1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
			end
		end)
		repeat wait() until game:IsLoaded()
		game.StarterGui:SetCore(
			"SendNotification",
			{
				Title = "AutoCrate Script",
				Text = "Script Made By DINO#1390"
			}
		)
	end)
	
end
coroutine.wrap(PMAP_fake_script)()
local function HQAOP_fake_script() -- LayOut3.RGBLocalScript 
	local script = Instance.new('LocalScript', LayOut3)

	--LocalScript
	--put this script in a TextLabel
	
	local delay2 = 0.5
	local TextLabel = script.Parent 
	while true do 
		TextLabel.TextColor3 = Color3.new(255, 0, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 0.333333, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0, 0.482353, 1)
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		wait(delay2) 
	end
	
end
coroutine.wrap(HQAOP_fake_script)()
local function GPNR_fake_script() -- LayOut3.LocalScript 
	local script = Instance.new('LocalScript', LayOut3)

	script.Parent.MouseButton1Click:connect(function()
		while true do
			wait(3)
			local args = {
				[1] = "Load",
				[2] = "Layout3"
			}
	
			game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
			-----------------------------------------------------------
			local args = {
				[1] = 26
			}
	
			game:GetService("ReplicatedStorage").Rebirth:InvokeServer(unpack(args))
		end
	end)
	
end
coroutine.wrap(GPNR_fake_script)()
local function BPKA_fake_script() -- LayOut2.RGBLocalScript 
	local script = Instance.new('LocalScript', LayOut2)

	--LocalScript
	--put this script in a TextLabel
	
	local delay2 = 0.5
	local TextLabel = script.Parent 
	while true do 
		TextLabel.TextColor3 = Color3.new(255, 0, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 0.333333, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0, 0.482353, 1)
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		wait(delay2) 
	end
	
end
coroutine.wrap(BPKA_fake_script)()
local function ETIPTII_fake_script() -- LayOut2.LocalScript 
	local script = Instance.new('LocalScript', LayOut2)

	script.Parent.MouseButton1Click:connect(function()
		while true do
			wait(3)
			local args = {
				[1] = "Load",
				[2] = "Layout2"
			}
	
			game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
			-----------------------------------------------------------
			local args = {
				[1] = 26
			}
	
			game:GetService("ReplicatedStorage").Rebirth:InvokeServer(unpack(args))
		end
	end)
	
	
end
coroutine.wrap(ETIPTII_fake_script)()
local function ETKTF_fake_script() -- LayOut1.RGBLocalScript 
	local script = Instance.new('LocalScript', LayOut1)

	--LocalScript
	--put this script in a TextLabel
	
	local delay2 = 0.5
	local TextLabel = script.Parent 
	while true do 
		TextLabel.TextColor3 = Color3.new(255, 0, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 0.333333, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(1, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 1, 0) 
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0, 0.482353, 1)
		wait(delay2) 
		TextLabel.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		wait(delay2) 
	end
	
end
coroutine.wrap(ETKTF_fake_script)()
local function TFQYGFC_fake_script() -- LayOut1.LocalScript 
	local script = Instance.new('LocalScript', LayOut1)

	script.Parent.MouseButton1Click:connect(function()
		while true do
			wait(3)
			local args = {
				[1] = "Load",
				[2] = "Layout1"
			}
	
			game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
			-----------------------------------------------------------
			local args = {
				[1] = 26
			}
	
			game:GetService("ReplicatedStorage").Rebirth:InvokeServer(unpack(args))
		end
	end)
	
end
coroutine.wrap(TFQYGFC_fake_script)() 
