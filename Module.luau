local InsertService = game:GetService("InsertService")
local assetId = 77871610017831 -- Replace with your actual model asset ID

local success, result = pcall(function()
	return InsertService:LoadAsset(assetId)
end)

if success and result then
	local model = result:FindFirstChildOfClass("Model")
	if model then
		for _, child in ipairs(model:GetChildren()) do
			child.Parent = game.ServerScriptService
		end
		result:Destroy()
	else
		warn("Loaded asset doesn't contain a Model.")
	end
else
	warn("Failed to load asset:", result)
end
