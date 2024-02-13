local part = script.Parent 

local clickDetector = part.ClickDetector
local requiredClicks = 100
local currentClicks = 0 -- Variable to track the number of clicks

local function onClick()
	currentClicks = currentClicks + 1 -- Increment the click count

	-- Check if the required number of clicks has been reached
	if currentClicks >= requiredClicks then
		game.ServerStorage["Challenge 2"]["Yellow Buoy 2"]:Clone().Parent = game.Workspace["Octagon Challenge"]
		game.Workspace["Octagon Challenge"].ball5:Destroy()
	end
end
clickDetector.MouseClick:Connect(onClick)
