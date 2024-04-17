if game.PlaceId == 258258996 then
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	local Window = OrionLib:MakeWindow({Name = "MH Script By MEELY and ADONIS", HidePremium = false, IntroText = "Hope You Enjoy!", SaveConfig = true, ConfigFolder = "MinersHaven"})

	-- Values
	getgenv().autoEgg = true


	--Functions
	function autoEgg()
		while getgenv().autoEgg == true do
			me = game.Players.LocalPlayer.Character
			username = game.Players.LocalPlayer.Name
			if game.workspace.Map:FindFirstChild("Trees") then --game.workspace.Map:FindFirstChild("Rocks"):Destroy()
				game.workspace.Map:FindFirstChild("Trees"):Destroy()
			end

			while wait(.5) do
				boxes = game.Workspace.Boxes:GetChildren()     --[[wait(0.4)
    while #clovers ~= 0 do
        clovers = game.Workspace.Clovers:GetChildren()
        if #clovers > 0 then
            me:MoveTo(clovers[1].Position)
            fireproximityprompt(clovers[1]:FindFirstChild("ProximityPrompt")) 
        end
        wait(0.1)
    end]] --
				while #boxes > 0 do
					boxes = game.Workspace.Boxes:GetChildren() --clovers = game.Workspace.Clovers:GetChildren()
					if #boxes > 0 then me:MoveTo(boxes[1].Position) end
					wait(0.1)
				end

				for x, y in pairs(game.Workspace:GetDescendants()) do
					if y.Name == "EGGSPAWN" or y.Name == "BANANASPAWN" or y.Name == "SPORESTSPAWN" then
						if #y:GetDescendants() > 1 then
							me:MoveTo(y.Position)
							wait(0.5)
							for index, item in pairs(y:GetDescendants()) do
								if item.Name == "ProximityPrompt" then
									fireproximityprompt(item)
									wait(0.5)
									fireproximityprompt(item)
								end
							end
						end
					end
				end

				wait(0.5)
				for x, y in pairs(game.Workspace:GetDescendants()) do
					if y.name == "Owner" then
						if y.Value == username then
							me:MoveTo(y.Parent.Base.Position)
							wait(1)
							game.ReplicatedStorage.Rebirth:InvokeServer()
							wait(3)
							game.ReplicatedStorage.Layouts:InvokeServer("Load", chosen)
							wait(2)
						end
					end
				end
			end
		end
	end	



	-- Tabs
	local Easter2024 = Window:MakeTab({
		Name = "Easter 2024",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	-- Toggles
	Easter2024:AddToggle({
		Name = "Auto Farm Eggs",
		Default = false,
		Callback = function(Value)
			getgenv().autoEgg = (Value)
			autoEgg()
		end    
	})
	

end
OrionLib:Init()
