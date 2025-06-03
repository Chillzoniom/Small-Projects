local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local running = false


local function getHumanoid()
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	return humanoid
end

local function ToggleRunning(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.LeftControl then
		local humanoid = getHumanoid()
		if running then
			humanoid.WalkSpeed = humanoid.WalkSpeed / 2
		else
			humanoid.WalkSpeed = humanoid.WalkSpeed * 2
		end
		running = not running
	end
end

UIS.InputBegan:Connect(ToggleRunning)
--Made By @chillzonium







