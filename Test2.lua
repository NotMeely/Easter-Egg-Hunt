local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Meely's Test Hub | Miner's Haven", HidePremium = false, IntroText = "By Meely and Adonis", SaveConfig = true, ConfigFolder = "OrionTest"})

local base = game:GetService("Players").LocalPlayer.PlayerTycoon.Value
local adjust = game:GetService("Workspace").Tycoons[tostring(base)].AdjustSpeed

local Root = game.Players.LocalPlayer.Character.HumanoidRootPart

local rpFurnaceString = "Basic Furnace"

local playersBase = game:GetService("Players").LocalPlayer.PlayerTycoon.Value
local playersBasePos = game:GetService("Workspace").Tycoons[tostring(playersBase)].Base
local playersBase = game:GetService("Players").LocalPlayer.PlayerTycoon.Value

local MyTycoon = game:GetService("Players").LocalPlayer.PlayerTycoon.Value
local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
local Boxes = game:GetService("Workspace").Boxes

local pulseDelay = 0.001 

-- Virables


-- Values
_G.AutoRebirth = true
_G.AutoLayouts = true
_G.SelectLayout = "1"
_G.SelectBox = "2"
_G.autoOpenCrates = true
_G.SelectTP = "3"
_G.autoCrates = true
_G.AutoEggs = true
_G.AutoPulse = true
_G.OreToFurnace = true
_G.autoAll = true





-- functions

function autoPulse()
    while _G.AutoPulse == true do 
        game:GetService("ReplicatedStorage").Pulse:FireServer()
        wait(pulseDelay)
    
    end
end

function autoEggs()
     while _G.AutoEggs == true  do
         wait(0.2)
        local easter = game.Workspace.Easter:FindFirstChild("EASTER ISLAND EGG SPAWNS")
        local children = easter:GetChildren()
        for z = 1, #children do
            if children[z]:GetChildren()[1] then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = children[z]:GetChildren()[1].CFrame
                wait(0.2)
                fireproximityprompt(children[z]:GetChildren()[1].ProximityPrompt)
                wait(0.2)
                if #children[z]:GetChildren() == 0 then
                            local Pos = game:GetService("Workspace").Tycoons[tostring(MyTycoon)].Base.Position
                             Root.CFrame = CFrame.new(Pos) * CFrame.new(0, 3.5, 0)
                end
            end
        end
        
        easter = game.Workspace.Map.EGG_SPAWNS
        children = easter:GetChildren()
        for z = 1, #children do
            if children[z]:GetChildren()[1] then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = children[z]:GetChildren()[1].CFrame
                wait(0.2)
                fireproximityprompt(children[z]:GetChildren()[1].ProximityPrompt)
                wait(0.2)
                if #children[z]:GetChildren() == 0 then
                            local Pos = game:GetService("Workspace").Tycoons[tostring(MyTycoon)].Base.Position
                             Root.CFrame = CFrame.new(Pos) * CFrame.new(0, 3.5, 0)
                end
            end
         end
      end
   end
      
function oresToFurnace()
    while _G.OreToFurnace == true do
        local rpFurnace = playersBase[tostring(rpFurnaceString)] and playersBase[tostring(rpFurnaceString)].Model.Lava
        if rpFurnace then
            for i, v in pairs(BaseOres:GetChildren()) do
                v.CFrame = rpFurnace.CFrame
               end
           end
        wait()
    end
end

function autoOpenCrates()
    while _G.autoOpenCrates == true do
            game:GetService("ReplicatedStorage").MysteryBox:InvokeServer(_G.SelectBox)
        wait(.5)
    end
end
     
function autoRebirth()
    while _G.AutoRebirth == true do
        game:GetService("ReplicatedStorage").Rebirth:InvokeServer()
     end
    end




function autoLayout()
if _G.AutoLayouts == true  then 
        local ohString1 = "Load"
        local ohString2 = _G.SelectLayout
        game:GetService("ReplicatedStorage").DestroyAll:InvokeServer()

        game:GetService("ReplicatedStorage").Layouts:InvokeServer(ohString1, ohString2)
        wait(5)
               
       
    end
end

function autoAll()
    while _G.autoAll == true do
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
                                wait(0.2)
                            end
                        end
                    end
                end
            end
        end
    end
end




-------------            tabs            ------------------
local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local BaseTweaksTab = Window:MakeTab({
	Name = "BaseTweaks",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

------------          sections          -----------------


local TelePSection = MiscTab:AddSection({
	Name = "Teleport To Places"
})

local EverythingSection = FarmTab:AddSection({
	Name = "Auto-Farm All"
})

local EggSection = FarmTab:AddSection({
	Name = "Eggs"
})

local LayoutSection = FarmTab:AddSection({
	Name = "Layout"
})

local RebirthSection = FarmTab:AddSection({
	Name = "Rebirth"
})

local ConveyorSection = BaseTweaksTab:AddSection({
	Name = "Conveyors"
})

local CrateSection = FarmTab:AddSection({
	Name = "Crate"
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Players Speed"
})

local RPFSection = FarmTab:AddSection({
	Name = "Auto RP"
})

local NPCSection = MiscTab:AddSection({
	Name = "NPC Gui"
})

local PulseSection = FarmTab:AddSection({
	Name = "Pulse"
})

----------                  Bottons                  --------

NPCSection:AddButton({
	Name = "Buy Blueprint",
	Callback = function()     
      		local items = game.ReplicatedStorage.Items:getChildren()
              for i=1,#items do
                       if items[i]:findFirstChild("BlueprintPrice") then
                        if items[i].BlueprintPrice.Value <= game.Players.LocalPlayer.Points.Value then
                        game.ReplicatedStorage.CraftsmanEvents:InvokeServer("type:buyblueprint", items[i].ItemId.Value)
          end
        end
      end         
  	end    
})


NPCSection:AddButton({
	Name = "CraftsMan",
	Callback = function()
       local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
      	if gui.Craftsman.Visible == false then
              gui.Craftsman.Visible = true
               local lock = gui.Craftsman:getDescendants()
                 for i=1,#lock do
                   if lock[i].Name == "LockedItem" then
                     lock[i].Visible = false
                 end
              end
            else
          gui.Craftsman.Visible = false
        end
  	end    
})

NPCSection:AddButton({
	Name = "MaskedMan",
	Callback = function()
      	local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
          if gui.EventShop.Visible == false then
              gui.EventShop.Visible = true
                else
                gui.EventShop.Visible = false
        end
  	end    
})



TelePSection:AddButton({
    Name = "Fargield",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-325.110077, 104.414345, 525.674622, -0.952662528, 5.33232161e-08, 0.304029793, 4.14620338e-08, 1, -4.54688696e-08, -0.304029793, -3.07107939e-08, -0.952662528)
      end    
})

TelePSection:AddButton({
    Name = "CraftsMan",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131.36438, 223.112289, 221.24263, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
      end    
})

TelePSection:AddButton({
    Name = "MaskedMan",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.workspace.Market.Handle.Position)
      end    
})

TelePSection:AddButton({
    Name = "Draedon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-140.7717742919922, -112.40277099609375, -125.08570098876953)
      end    
})

----------                toggles                 -------=--

PulseSection:AddToggle({
    Name = "Auto Pulse",
    Default = false,
    Callback = function(Value)
        _G.AutoPulse = Value
        autoPulse()
    end    
})

CrateSection:AddToggle({
    Name = "Auto Crates",
    Default = false,
    Callback = function(Value)
        task.spawn(function()
            CrateTP = Value
                while CrateTP do
                   task.wait(0.2)
                         for i, v in pairs(Boxes:GetChildren()) do
                             Root.CFrame = CFrame.new(v.Position)
                          end   
                        if #Boxes:GetChildren() == 0 then
                            local Pos = game:GetService("Workspace").Tycoons[tostring(MyTycoon)].Base.Position
                             Root.CFrame = CFrame.new(Pos) * CFrame.new(0, 3.5, 0)
                
            end
         end
     end)
  end      
})

RPFSection:AddToggle({
    Name = "AutoRP Farm",
    Default = false,
    Callback = function(Value)
        _G.OreToFurnace = Value
        oresToFurnace()
    end    
})

RebirthSection:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
        autoRebirth()
	end    
})

EggSection:AddToggle({
	Name = "Auto Eggs",
	Default = false,
	Callback = function(Value)
     _G.AutoEggs = Value
      autoEggs()
  end  
})

LayoutSection:AddToggle({
	Name = "Auto Layout",
	Default = false,
	Callback = function(Value)
		_G.AutoLayouts = Value
        autoLayout()
	end    
})

CrateSection:AddToggle({
	Name = "Open Crate",
	Default = false,
	Callback = function(Value)
      _G.autoOpenCrates = Value
      autoOpenCrates()
	end    
})

EverythingSection:AddToggle({
    Name = "Auto Farm All (No Turning Off)",
    Callback = function(Value)
        _G.autoAll = Value
        autoAll()
    end
})
-----------            TextBook              ------------
RPFSection:AddTextbox({
    Name = "Name Of RP Furnace",
    Default = "Input",
    TextDisappear = false,
    Callback = function(Value)
        rpFurnaceString = Value
    end      
})
----------------       Dropboxes     --------------------



LayoutSection:AddDropdown({
	Name = "Select Layout",
	Default = "Default",
	Options = {"Default", "Layout1", "Layout2", "Layout3"},
	Callback = function(Value)
       _G.SelectLayout = Value
		print(_G.selectLayout)
	end    
})

CrateSection:AddDropdown({
	Name = "Select Box",
	Default = "Regular",
	Options = {"Regular", "Unreal", "Inferno", "Luxury", "Easter"},
	Callback = function(Value)
      _G.SelectBox = Value
      print(_G.SelectBox)
    
       
	end    
})
-------------------             Slider              ----------------

PulseSection:AddSlider({
    Name = "Auto Pulse Delay",
    Min = 0.0001,
    Max = 10,
    Default = 0.0001,
    Color = Color3.fromRGB(255,255,255),
    Increment = .001,
    ValueName = "Delay",
    Callback = function(Value)
        pulseDelay = Value
    end    
})

ConveyorSection:AddSlider({
    Name = "Conveyer Speed",
    Min = 1,
    Max = 50,
    Default = 1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Conveyer Speed",
    Callback = function(Value)
        adjust.Value = Value
    end
})

PlayerSection:AddSlider({
    Name = "Walk",
    Min = 50,
    Max = 500,
    Default = 50,
    Color = Color3.fromRGB(100,100,100),
    Increment = 1,
    ValueName = "Walk Speed",
    Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
       
    end
})

PlayerSection:AddSlider({
    Name = "Jump",
    Min = 50,
    Max = 500,
    Default = 50,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Jump Power",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end
})





















OrionLib:Init()
