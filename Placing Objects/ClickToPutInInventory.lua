-- On prompt, the item will be placed inside of the players inventory

local ProximityPrompt = script.Parent
local Item = game.ServerStorage.Tools:FindFirstChild("bagG4")
ProximityPrompt.Triggered:Connect(function(player)
	Item.Parent = player.Backpack

game.Workspace["Blind Challenge"].bag4:Destroy() -- destroys the physical in game object
ProximityPrompt:Destroy()
end)