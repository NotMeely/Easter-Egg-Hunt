local Players = game:GetService 'Players'

local Player = Players.LocalPlayer

local CollectedEggs, ReturnThread = {}, nil

local function OnEggSpawned(Egg)
   local isCollected = CollectedEggs[Egg.Name]
   if isCollected then
       return
   end

   CollectedEggs[Egg.Name] = true

   if ReturnThread then
       task.cancel(ReturnThread)
       ReturnThread = nil
   end

   local Character = Player.Character
   local OldPisition = Character:GetPivot()

   local Prompt = Egg:WaitForChild 'ProximityPrompt'
   local Pivot = Egg:GetPivot()

   local offset = Vector3.yAxis*(Prompt.MaxActivationDistance/2)
   local CF = CFrame.new(Pivot.Position - offset, Pivot.Position)
   
   Character:PivotTo(CF)

   task.wait(.3)

   fireproximityprompt(Prompt, 1)

   ReturnThread = task.delay(.1, function()
       Character:PivotTo(OldPisition)
   end)
end

game:GetService 'ReplicatedStorage'.EventControllers.Easter.EasterEggSpawned.OnClientEvent:Connect(OnEggSpawned)
