
--Script placed inside of the ball (tool) so that on click the ball is thrown


local tool = script.Parent
tool.Bounce.OnServerEvent:Connect(function(player, event) -- connects function to bounce event when called
	print(player)
local mouse = player:GetMouse() -- players mouse
	local ball = tool.Handle
	tool.Parent = workspace -- once event is triggered, moves ball to workspace out of players inventory
	ball.CFrame = tool.Handle.CFrame
		ball.CFrame = CFrame.new(ball.Position, event) -- direction 
		local BV = Instance.new("BodyVelocity", ball); -- velocity
		BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		BV.Velocity = ball.CFrame.lookVector * 60 -- how fast it throws
		wait(.1)
		tool.Handle.BodyVelocity:Destroy()
end)
