--[[this specific script is for one singular item (a blue bag) When
this object is clicked, the item is placed.
]] 

local PlaceHere = script.Parent -- Reference to the PlaceHere object

-- Function to check if the given item is the specific user tool
local function isHay(item)
	return item.Name == "bagG3" and item:IsA("Tool")
end

-- Function to handle the click event on the PlaceHere object
local function onClick(player)

	if player then
		local character = player.Character or player.CharacterAdded:Wait()
		local backpack = player.Backpack

		-- Check if the player is holding the specific tool
		local tool = player.Backpack:FindFirstChild("bagG3")
		if tool and isHay(tool) then
			-- Move the tool to the PlaceHere object
			game.ServerStorage.bag1:Clone().Parent = game.Workspace["Blind Challenge"].WoodPallet2.placeHere2
			-- Takes an item that is placed in serverStorage and places it on the plank

			-- Remove the tool from the player's inventory
			tool.Parent = nil
		end
	end
end

-- Event listener for when the PlaceHere object is clicked
PlaceHere.MouseClick:Connect(onClick)