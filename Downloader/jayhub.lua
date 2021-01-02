--[[
Jack1214060#5890
Don't get excited, you literally can't get anything from this. 
]]





getgenv().Mc_Jayhub_Remove_Lasers = function()
    for _, child in pairs(game.Workspace:GetDescendants()) do
        if child.Name == "Lasers" then
        child:Destroy()
        elseif child.Name == "Light1" then
            child:Destroy()
        elseif child.Name == "Light2" then
            child:Destroy()
        elseif child.Name == "Light3" then
            child:Destroy()
        elseif child.Name == "Light4" then
            child:Destroy()
        elseif child.Name == "Light5" then
            child:Destroy()
        elseif child.Name == "Laser1" then
            child:Destroy()
        elseif child.Name == "Laser2" then
            child:Destroy()
        elseif child.Name == "Laser3" then
            child:Destroy()
        elseif child.Name == "Laser4" then
            child:Destroy()
        elseif child.Name == "Lava" then
            child:Destroy()
        
        end
    end
end

getgenv().JayHub_Download = Instance.new("ScreenGui")
local FirstLoadingFrame = Instance.new("Frame")
local FirstLoadingLabel = Instance.new("TextLabel")
local FirstLoadingTopBar = Instance.new("Frame")
local FirstLoadingNameLabel = Instance.new("TextLabel")
local FirstLoadingBarFrame = Instance.new("Frame")
getgenv().FirstLoadingBar = Instance.new("Frame")

--Properties:

JayHub_Download.Name = "JayHub_Download"
JayHub_Download.Parent = game.CoreGui
JayHub_Download.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FirstLoadingFrame.Name = "FirstLoadingFrame"
FirstLoadingFrame.Parent = JayHub_Download
FirstLoadingFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
FirstLoadingFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
FirstLoadingFrame.BorderSizePixel = 0
FirstLoadingFrame.Position = UDim2.new(0.5, -129, 0.5, -36)
FirstLoadingFrame.Size = UDim2.new(0, 258, 0, 70)

FirstLoadingLabel.Name = "FirstLoadingLabel"
FirstLoadingLabel.Parent = FirstLoadingFrame
FirstLoadingLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FirstLoadingLabel.BackgroundTransparency = 1.000
FirstLoadingLabel.BorderSizePixel = 0
FirstLoadingLabel.Position = UDim2.new(0, 0, 0.286000013, 0)
FirstLoadingLabel.Size = UDim2.new(0, 258, 0, 23)
FirstLoadingLabel.Font = Enum.Font.Cartoon
FirstLoadingLabel.Text = "Downloading Data..."
FirstLoadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FirstLoadingLabel.TextSize = 21.000

FirstLoadingTopBar.Name = "FirstLoadingTopBar"
FirstLoadingTopBar.Parent = FirstLoadingFrame
FirstLoadingTopBar.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
FirstLoadingTopBar.BorderColor3 = Color3.fromRGB(59, 59, 59)
FirstLoadingTopBar.BorderSizePixel = 0
FirstLoadingTopBar.Size = UDim2.new(0, 258, 0, 20)

FirstLoadingNameLabel.Name = "FirstLoadingNameLabel"
FirstLoadingNameLabel.Parent = FirstLoadingTopBar
FirstLoadingNameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FirstLoadingNameLabel.BackgroundTransparency = 1.000
FirstLoadingNameLabel.BorderSizePixel = 0
FirstLoadingNameLabel.Size = UDim2.new(0, 258, 0, 20)
FirstLoadingNameLabel.Font = Enum.Font.Gotham
FirstLoadingNameLabel.Text = "JayHub Beta"
FirstLoadingNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FirstLoadingNameLabel.TextSize = 18.000

FirstLoadingBarFrame.Name = "FirstLoadingBarFrame"
FirstLoadingBarFrame.Parent = FirstLoadingFrame
FirstLoadingBarFrame.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
FirstLoadingBarFrame.BorderColor3 = Color3.fromRGB(59, 59, 59)
FirstLoadingBarFrame.BorderSizePixel = 0
FirstLoadingBarFrame.Position = UDim2.new(0.178000003, 0, 0.649999976, 0)
FirstLoadingBarFrame.Size = UDim2.new(0, 166, 0, 13)

FirstLoadingBar.Name = "FirstLoadingBar"
FirstLoadingBar.Parent = FirstLoadingBarFrame
FirstLoadingBar.BackgroundColor3 = Color3.fromRGB(9, 175, 3)
FirstLoadingBar.BorderColor3 = Color3.fromRGB(59, 59, 59)
FirstLoadingBar.BorderSizePixel = 0
FirstLoadingBar.Size = UDim2.new(0, 166, 0, 13)

FirstLoadingBarFrame.ClipsDescendants = true
if game.CoreGui:FindFirstChild("JayHub") then
    Mc_JayHub_RemoveGui()
end

FirstLoadingBar.Position = UDim2.new(-1, 0, 0, 0)

FirstLoadingLabel.Text = "Waiting for game..."

game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)

FirstLoadingLabel.Text = "Downloading Legohax..."

local success, response = pcall(function()
    if game.PlaceId == 1224212277 then
        loadstring(game:HttpGet("https://jack1214060.000webhostapp.com/scripts/jayhub/jayhub_mc.lua",true))()
    else
        FirstLoadingLabel.Text = "Game not supported"
        wait(2)
        JayHub_Download:Destroy()
    end
end)

if not success then
    FirstLoadingLabel.Text = "Error"
    print(response)
    wait(2)
    JayHub_Download:Destroy()
end