local vind = loadstring(game:HttpGet("https://raw.githubusercontent.com/Skinny-yz/VVind-UI/refs/heads/main/src.lua"))()
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local camera = workspace.CurrentCamera
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GuiService = game:GetService("GuiService")

local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled

local Paper = require(ReplicatedStorage:WaitForChild("Paper"))

local function getCharacter()
    return LocalPlayer and LocalPlayer.Character or nil
end

local function getHumanoid()
    local char = getCharacter()
    return char and char:FindFirstChildOfClass("Humanoid") or nil
end

local function getRootPart()
    local char = getCharacter()
    return char and char:FindFirstChild("HumanoidRootPart") or nil
end

local function applyWalkSpeed(speed)
    local hum = getHumanoid()
    if hum then
        hum.WalkSpeed = speed
    end
end

local function applyJumpPower(power)
    local hum = getHumanoid()
    if hum then
        hum.JumpPower = power
    end
end

local function resetWalkSpeed()
    local hum = getHumanoid()
    if hum then
        hum.WalkSpeed = 16
    end
end

local function resetJumpPower()
    local hum = getHumanoid()
    if hum then
        hum.JumpPower = 50
    end
end

local function rejoinGame()
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
end

local function serverHop()
    local function getServers()
        local universeId = nil
        pcall(function()
            local res = game:HttpGet("https://apis.roblox.com/universes/v1/places/" .. tostring(game.PlaceId) .. "/universe")
            local data = HttpService:JSONDecode(res)
            if data and data.universeId then
                universeId = data.universeId
            end
        end)
        if not universeId then
            return nil
        end
        local servers = {}
        local cursor = ""
        while true do
            local url = "https://games.roblox.com/v1/games/" .. tostring(universeId) .. "/servers/Public?limit=100" .. (cursor ~= "" and "&cursor=" .. cursor or "")
            local res = game:HttpGet(url)
            local data = HttpService:JSONDecode(res)
            if not data or not data.data then
                break
            end
            for _, server in ipairs(data.data) do
                if server.id ~= game.JobId and server.playing < server.maxPlayers then
                    table.insert(servers, server.id)
                end
            end
            if data.nextPageCursor then
                cursor = data.nextPageCursor
            else
                break
            end
        end
        return servers
    end
    local servers = getServers()
    if not servers or #servers == 0 then
        vind:Notify({ Title = "ServerHop", Text = "No other servers available.", Type = "warning", Duration = 3 })
        return
    end
    local randomServer = servers[math.random(1, #servers)]
    TeleportService:TeleportToPlaceInstance(game.PlaceId, randomServer, LocalPlayer)
end

FLYING = false
QEfly = true
iyflyspeed = 50
local flyKeyDown, flyKeyUp, flyLoop

local function sFLY(vfly)
    local plr = LocalPlayer
    local char = plr.Character or plr.CharacterAdded:Wait()
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if not humanoid then
        repeat task.wait() until char:FindFirstChildOfClass("Humanoid")
        humanoid = char:FindFirstChildOfClass("Humanoid")
    end
    if flyKeyDown or flyKeyUp or flyLoop then
        flyKeyDown:Disconnect()
        flyKeyUp:Disconnect()
        flyLoop:Disconnect()
    end
    local T = getRootPart()
    if not T then return end
    local CONTROL = {F = 0, B = 0, L = 0, R = 0, U = 0, D = 0}
    local SPEED = iyflyspeed or 50
    local function FLY()
        FLYING = true
        local bg = Instance.new("BodyGyro")
        bg.P = 9e4
        bg.D = 500
        bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.CFrame = T.CFrame
        bg.Parent = T
        local bv = Instance.new("BodyVelocity")
        bv.P = 9e4
        bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        bv.Velocity = Vector3.new(0, 0, 0)
        bv.Parent = T
        flyKeyDown = UserInputService.InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.W then CONTROL.F = 1 end
            if input.KeyCode == Enum.KeyCode.S then CONTROL.B = 1 end
            if input.KeyCode == Enum.KeyCode.A then CONTROL.L = 1 end
            if input.KeyCode == Enum.KeyCode.D then CONTROL.R = 1 end
            if input.KeyCode == Enum.KeyCode.Space then CONTROL.U = 1 end
            if input.KeyCode == Enum.KeyCode.LeftControl then CONTROL.D = 1 end
        end)
        flyKeyUp = UserInputService.InputEnded:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.W then CONTROL.F = 0 end
            if input.KeyCode == Enum.KeyCode.S then CONTROL.B = 0 end
            if input.KeyCode == Enum.KeyCode.A then CONTROL.L = 0 end
            if input.KeyCode == Enum.KeyCode.D then CONTROL.R = 0 end
            if input.KeyCode == Enum.KeyCode.Space then CONTROL.U = 0 end
            if input.KeyCode == Enum.KeyCode.LeftControl then CONTROL.D = 0 end
        end)
        flyLoop = RunService.RenderStepped:Connect(function()
            if not T or not T.Parent then
                FLYING = false
                bg:Destroy()
                bv:Destroy()
                flyKeyDown:Disconnect()
                flyKeyUp:Disconnect()
                flyLoop:Disconnect()
                return
            end
            if QEfly then
                bg.CFrame = camera.CoordinateFrame
            else
                bg.CFrame = T.CFrame
            end
            local VEL = Vector3.new(0, 0, 0)
            if CONTROL.F == 1 then VEL = VEL + camera.CFrame.LookVector * SPEED end
            if CONTROL.B == 1 then VEL = VEL - camera.CFrame.LookVector * SPEED end
            if CONTROL.R == 1 then VEL = VEL + camera.CFrame.RightVector * SPEED end
            if CONTROL.L == 1 then VEL = VEL - camera.CFrame.RightVector * SPEED end
            if CONTROL.U == 1 then VEL = VEL + Vector3.new(0, SPEED, 0) end
            if CONTROL.D == 1 then VEL = VEL - Vector3.new(0, SPEED, 0) end
            bv.Velocity = VEL
        end)
    end
    FLY()
end

local function nFLY()
    FLYING = false
    if flyKeyDown then flyKeyDown:Disconnect() end
    if flyKeyUp then flyKeyUp:Disconnect() end
    if flyLoop then flyLoop:Disconnect() end
    local T = getRootPart()
    if T then
        for _, v in pairs(T:GetChildren()) do
            if v:IsA("BodyVelocity") or v:IsA("BodyGyro") then
                v:Destroy()
            end
        end
    end
    local hum = getHumanoid()
    if hum then
        hum.PlatformStand = false
    end
end

local noclipEnabled = false
local noclipConn = nil

local function toggleNoclip(state)
    noclipEnabled = state
    if noclipConn then
        noclipConn:Disconnect()
        noclipConn = nil
    end
    if state then
        noclipConn = RunService.Stepped:Connect(function()
            local char = getCharacter()
            if not char then return end
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end)
    end
end

local window = vind:CreateWindow({
    Title = "AvHub - Chicken Farm",
    Subtitle = "Chicken Farm",
    Icon = "rbxassetid://101597703020874",
    Size = isMobile and UDim2.fromOffset(400, 380) or UDim2.fromOffset(500, 450),
    Draggable = true,
    Resizable = not isMobile,
})

local homeTab = window:AddTab({ Name = "Home", Icon = "Lucide:house" })

local playerInfo = homeTab:AddParagraph({
    Title = "Player Information",
    Text = "Loading...",
})

local function updatePlayerInfo()
    pcall(function()
        local name = LocalPlayer and LocalPlayer.Name or "Unknown"
        local hum = getHumanoid()
        local health = hum and string.format("%.1f", hum.Health) or "N/A"
        local maxHealth = hum and string.format("%.1f", hum.MaxHealth) or "N/A"
        local ws = hum and tostring(hum.WalkSpeed) or "N/A"
        local jp = hum and tostring(hum.JumpPower) or "N/A"
        local info = string.format("Name: %s\nHealth: %s / %s\nWalkSpeed: %s\nJumpPower: %s", name, health, maxHealth, ws, jp)
        if info and info ~= "" then
            playerInfo:Set(info)
        end
    end)
end

task.spawn(function()
    while true do
        updatePlayerInfo()
        task.wait(2)
    end
end)

LocalPlayer.CharacterAdded:Connect(updatePlayerInfo)

homeTab:AddDivider()

local rejoinButton = homeTab:AddButton({
    Text = "Rejoin",
    Description = "Rejoin the current server",
    Icon = "Lucide:refresh-cw",
    Callback = function()
        rejoinGame()
    end,
})

local serverHopButton = homeTab:AddButton({
    Text = "ServerHop",
    Description = "Join a random different server",
    Icon = "Lucide:globe",
    Callback = function()
        serverHop()
    end,
})

homeTab:AddDivider()

local antiAfkToggle = homeTab:AddToggle({
    Text = "Anti-AFK",
    Description = "Prevent being kicked for inactivity",
    Default = false,
    Flag = "AntiAfk",
})

local antiAfkThread = nil

local function startAntiAfk()
    if antiAfkThread then return end
    antiAfkThread = task.spawn(function()
        while antiAfkToggle:Get() do
            local char = getCharacter()
            if char and char.Parent then
                local root = getRootPart()
                if root then
                    root.CFrame = root.CFrame + Vector3.new(0, 0.1, 0)
                    task.wait(0.05)
                    root.CFrame = root.CFrame - Vector3.new(0, 0.1, 0)
                end
            end
            task.wait(30)
        end
    end)
end

local function stopAntiAfk()
    if antiAfkThread then
        task.cancel(antiAfkThread)
        antiAfkThread = nil
    end
end

antiAfkToggle:OnChanged(function(value)
    if value then
        startAntiAfk()
    else
        stopAntiAfk()
    end
end)

homeTab:AddDivider()

local function getStats()
    local stats = {}
    pcall(function()
        local cash = Paper.Stats.Get(LocalPlayer, "Cash").Value or 0
        local chickens = Paper.Stats.Get(LocalPlayer, "Chickens").Value or 0
        local eggs = Paper.Stats.Get(LocalPlayer, "Eggs").Value or 0
        local gems = Paper.Stats.Get(LocalPlayer, "Gems").Value or 0
        local rebirths = Paper.Stats.Get(LocalPlayer, "Rebirths").Value or 0
        stats.Cash = cash
        stats.Chickens = chickens
        stats.Eggs = eggs
        stats.Gems = gems
        stats.Rebirths = rebirths
    end)
    return stats
end

local statsParagraph = homeTab:AddParagraph({
    Title = "Game Stats",
    Text = "Loading...",
})

local function updateStats()
    pcall(function()
        local s = getStats()
        local text = string.format("Cash: %s\nChickens: %s\nEggs: %s\nGems: %s\nRebirths: %s",
            tostring(s.Cash or 0),
            tostring(s.Chickens or 0),
            tostring(s.Eggs or 0),
            tostring(s.Gems or 0),
            tostring(s.Rebirths or 0))
        statsParagraph:Set(text)
    end)
end

task.spawn(function()
    while true do
        updateStats()
        task.wait(2)
    end
end)

local playerTab = window:AddTab({ Name = "Player", Icon = "user" })

local wsToggle = playerTab:AddToggle({
    Text = "Enable WalkSpeed",
    Description = "Override the default walkspeed",
    Default = false,
    Flag = "WalkSpeedToggle",
})

local wsSlider = playerTab:AddSlider({
    Text = "WalkSpeed",
    Description = "Set walkspeed value",
    Min = 0,
    Max = 100,
    Increment = 0.5,
    Default = 16,
    Flag = "WalkSpeed",
})

wsToggle:OnChanged(function(value)
    if value then
        applyWalkSpeed(wsSlider:Get())
    else
        resetWalkSpeed()
    end
end)

wsSlider:OnChanged(function(value)
    if wsToggle:Get() then
        applyWalkSpeed(value)
    end
end)

local jpToggle = playerTab:AddToggle({
    Text = "Enable JumpPower",
    Description = "Override the default jumppower",
    Default = false,
    Flag = "JumpPowerToggle",
})

local jpSlider = playerTab:AddSlider({
    Text = "JumpPower",
    Description = "Set jumppower value",
    Min = 0,
    Max = 250,
    Increment = 1,
    Default = 50,
    Flag = "JumpPower",
})

jpToggle:OnChanged(function(value)
    if value then
        applyJumpPower(jpSlider:Get())
    else
        resetJumpPower()
    end
end)

jpSlider:OnChanged(function(value)
    if jpToggle:Get() then
        applyJumpPower(value)
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    if wsToggle:Get() then
        applyWalkSpeed(wsSlider:Get())
    end
    if jpToggle:Get() then
        applyJumpPower(jpSlider:Get())
    end
end)

playerTab:AddDivider()

local instantRespawnToggle = playerTab:AddToggle({
    Text = "Instant Respawn",
    Description = "Automatically respawn instantly on death",
    Default = false,
    Flag = "InstantRespawn",
})

local respawnThread = nil

local function attemptRespawn()
    local gui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if not gui then
        return false
    end
    for _, child in ipairs(gui:GetDescendants()) do
        if child:IsA("TextButton") and child.Visible and child.Active then
            local text = child.Text or ""
            if text:lower():find("respawn") or text:lower():find("spawn") then
                child:FireClick()
                return true
            end
        end
    end
    return false
end

local function startInstantRespawn()
    if respawnThread then return end
    respawnThread = task.spawn(function()
        while instantRespawnToggle:Get() do
            if attemptRespawn() then
                task.wait(0.5)
            end
            task.wait(0.1)
        end
    end)
end

local function stopInstantRespawn()
    if respawnThread then
        task.cancel(respawnThread)
        respawnThread = nil
    end
end

instantRespawnToggle:OnChanged(function(value)
    if value then
        startInstantRespawn()
    else
        stopInstantRespawn()
    end
end)

playerTab:AddDivider()

local flyToggle = playerTab:AddToggle({
    Text = "Fly",
    Description = "Toggle flight mode (WASD to move, Space to go up, Ctrl to go down)",
    Default = false,
    Flag = "FlyToggle",
})

flyToggle:OnChanged(function(value)
    if value then
        sFLY(true)
    else
        nFLY()
    end
end)

local flySpeedSlider = playerTab:AddSlider({
    Text = "Fly Speed",
    Description = "Adjust flight speed",
    Min = 10,
    Max = 200,
    Increment = 5,
    Default = 50,
    Flag = "FlySpeed",
})

flySpeedSlider:OnChanged(function(value)
    iyflyspeed = value
end)

local farmTab = window:AddTab({ Name = "AutoFarm", Icon = "Lucide:hammer" })

local function getEggs()
    local eggsFolder = workspace:FindFirstChild("Eggs")
    if not eggsFolder then return {} end
    local targets = {}
    for _, child in ipairs(eggsFolder:GetChildren()) do
        if child:IsA("BasePart") then
            table.insert(targets, child)
        elseif child:IsA("Model") then
            local part = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
            if part then
                table.insert(targets, part)
            end
        end
    end
    return targets
end

local function getDepositHitbox()
    local plots = workspace:FindFirstChild("Plots")
    if not plots then return nil end
    local playerPlot = plots:FindFirstChild(LocalPlayer.Name)
    if not playerPlot then return nil end
    local buttons = playerPlot:FindFirstChild("Buttons")
    if not buttons then return nil end
    local depositEggs = buttons:FindFirstChild("DepositEggs")
    if not depositEggs then return nil end
    return depositEggs:FindFirstChild("Hitbox")
end

local function teleportToDeposit()
    local hitbox = getDepositHitbox()
    local root = getRootPart()
    if hitbox and root then
        root.CFrame = hitbox.CFrame
        return true
    end
    return false
end

local function pickupEggsCycle()
    local eggs = getEggs()
    local root = getRootPart()
    if not root then return end
    if #eggs == 0 then
        teleportToDeposit()
        return
    end
    for _, part in ipairs(eggs) do
        if part and part.Parent then
            root.CFrame = part.CFrame
            task.wait(0.3)
        end
    end
    teleportToDeposit()
end

local pickupEggsButton = farmTab:AddButton({
    Text = "Pickup Eggs",
    Description = "Teleport to all eggs, then deposit them",
    Icon = "Lucide:egg",
    Callback = function()
        pickupEggsCycle()
    end,
})

local autoPickupToggle = farmTab:AddToggle({
    Text = "Auto Pickup Eggs",
    Description = "Continuously pickup and deposit eggs",
    Default = false,
    Flag = "AutoPickup",
})

local autoPickupThread = nil

local function startAutoPickup()
    if autoPickupThread then return end
    autoPickupThread = task.spawn(function()
        while autoPickupToggle:Get() do
            pickupEggsCycle()
            task.wait(0.8)
        end
    end)
end

local function stopAutoPickup()
    if autoPickupThread then
        task.cancel(autoPickupThread)
        autoPickupThread = nil
    end
end

autoPickupToggle:OnChanged(function(value)
    if value then
        startAutoPickup()
    else
        stopAutoPickup()
    end
end)

farmTab:AddDivider()

local function getCollectButton()
    local plots = workspace:FindFirstChild("Plots")
    if not plots then return nil end
    local playerPlot = plots:FindFirstChild(LocalPlayer.Name)
    if not playerPlot then return nil end
    local buttons = playerPlot:FindFirstChild("Buttons")
    if not buttons then return nil end
    local collectMoney = buttons:FindFirstChild("CollectMoney")
    if not collectMoney then return nil end
    return collectMoney:FindFirstChild("Button")
end

local function collectCash()
    local btn = getCollectButton()
    if not btn then return end
    local root = getRootPart()
    if not root then return end
    if btn:IsA("BasePart") then
        root.CFrame = btn.CFrame
        task.wait(0.2)
        local clickDetector = btn:FindFirstChildWhichIsA("ClickDetector")
        if clickDetector then
            clickDetector:FireClick(LocalPlayer.Mouse)
        end
    elseif btn:IsA("TextButton") then
        btn:FireClick()
    end
end

local collectCashButton = farmTab:AddButton({
    Text = "Collect Cash",
    Description = "Teleport to the collect button and click it",
    Icon = "Lucide:coins",
    Callback = function()
        collectCash()
    end,
})

local autoCollectToggle = farmTab:AddToggle({
    Text = "Auto Collect Cash",
    Description = "Continuously collect cash",
    Default = false,
    Flag = "AutoCollect",
})

local autoCollectThread = nil

local function startAutoCollect()
    if autoCollectThread then return end
    autoCollectThread = task.spawn(function()
        while autoCollectToggle:Get() do
            collectCash()
            task.wait(1.2)
        end
    end)
end

local function stopAutoCollect()
    if autoCollectThread then
        task.cancel(autoCollectThread)
        autoCollectThread = nil
    end
end

autoCollectToggle:OnChanged(function(value)
    if value then
        startAutoCollect()
    else
        stopAutoCollect()
    end
end)

farmTab:AddDivider()

local function getMergeButton()
    local plots = workspace:FindFirstChild("Plots")
    if not plots then return nil end
    local playerPlot = plots:FindFirstChild(LocalPlayer.Name)
    if not playerPlot then return nil end
    local buttons = playerPlot:FindFirstChild("Buttons")
    if not buttons then return nil end
    local mergeChickens = buttons:FindFirstChild("MergeChickens")
    if not mergeChickens then return nil end
    return mergeChickens:FindFirstChild("Button")
end

local function mergeChickens()
    local btn = getMergeButton()
    if not btn then
        vind:Notify({ Title = "Merge Chickens", Text = "Merge button not found.", Type = "error", Duration = 3 })
        return
    end
    local ui = btn:FindFirstChild("UI")
    if ui and ui:IsA("BillboardGui") then
        if not ui.Enabled then
            vind:Notify({ Title = "Merge Chickens", Text = "Cannot Merge Chickens.. Buy more Chickens first 🐔", Type = "warning", Duration = 3 })
            return
        end
    end
    local root = getRootPart()
    if root and btn then
        root.CFrame = btn.CFrame
    end
end

local mergeChickensButton = farmTab:AddButton({
    Text = "Merge Chickens",
    Description = "Teleport to the merge button if able",
    Icon = "Lucide:merge",
    Callback = function()
        mergeChickens()
    end,
})

local autoMergeToggle = farmTab:AddToggle({
    Text = "Auto Merge Chickens",
    Description = "Continuously try to merge chickens",
    Default = false,
    Flag = "AutoMerge",
})

local autoMergeThread = nil

local function startAutoMerge()
    if autoMergeThread then return end
    autoMergeThread = task.spawn(function()
        while autoMergeToggle:Get() do
            mergeChickens()
            task.wait(1.5)
        end
    end)
end

local function stopAutoMerge()
    if autoMergeThread then
        task.cancel(autoMergeThread)
        autoMergeThread = nil
    end
end

autoMergeToggle:OnChanged(function(value)
    if value then
        startAutoMerge()
    else
        stopAutoMerge()
    end
end)

farmTab:AddDivider()

local function getBuyButton(amount)
    local plots = workspace:FindFirstChild("Plots")
    if not plots then return nil end
    local playerPlot = plots:FindFirstChild(LocalPlayer.Name)
    if not playerPlot then return nil end
    local buttons = playerPlot:FindFirstChild("Buttons")
    if not buttons then return nil end
    local buyChickens = buttons:FindFirstChild("BuyChickens")
    if not buyChickens then return nil end
    local buyPart = buyChickens:FindFirstChild("Buy" .. tostring(amount))
    if not buyPart then return nil end
    return buyPart:FindFirstChild("Button")
end

local function teleportToBuyButton(amount)
    local btn = getBuyButton(amount)
    if not btn then return end
    local root = getRootPart()
    if root and btn and btn:IsA("BasePart") then
        root.CFrame = btn.CFrame
    elseif root and btn then
        local part = btn:FindFirstChildWhichIsA("BasePart")
        if part then
            root.CFrame = part.CFrame
        end
    end
end

local buyAmounts = {1, 5, 25, 100}
local autoBuyThreads = {}

for _, amount in ipairs(buyAmounts) do
    local btnText = "Buy " .. tostring(amount)
    local toggleText = "Auto Buy " .. tostring(amount)
    local flag = "AutoBuy" .. tostring(amount)

    local button = farmTab:AddButton({
        Text = btnText,
        Description = "Teleport to the Buy " .. tostring(amount) .. " button",
        Icon = "Lucide:shopping-cart",
        Callback = function()
            teleportToBuyButton(amount)
        end,
    })

    local toggle = farmTab:AddToggle({
        Text = toggleText,
        Description = "Continuously teleport to the Buy " .. tostring(amount) .. " button",
        Default = false,
        Flag = flag,
    })

    local thread = nil
    toggle:OnChanged(function(value)
        if value then
            if thread then return end
            thread = task.spawn(function()
                while toggle:Get() do
                    teleportToBuyButton(amount)
                    task.wait(1)
                end
            end)
            autoBuyThreads[amount] = thread
        else
            if thread then
                task.cancel(thread)
                autoBuyThreads[amount] = nil
                thread = nil
            end
        end
    end)
end

farmTab:AddDivider()

local function claimLuckyBlock()
    local tommy = workspace:FindFirstChild("TommyBuilder2004")
    if not tommy then return end
    local holdingObject = nil
    for _, child in ipairs(tommy:GetChildren()) do
        if child:IsA("Model") and child.Name == "HoldingObject" then
            local mainPart = child:FindFirstChild("Main")
            if mainPart and mainPart:IsA("MeshPart") then
                local uiAttach = mainPart:FindFirstChild("UIAttachment")
                if uiAttach and uiAttach:IsA("Attachment") then
                    holdingObject = child
                    break
                end
            end
        end
    end
    if not holdingObject then return end
    local playerGui = LocalPlayer:FindFirstChild("PlayerGui")
    if not playerGui then return end
    local main = playerGui:FindFirstChild("Main")
    if not main then return end
    local luckyBlock = main:FindFirstChild("Luckyblock")
    if not luckyBlock or not luckyBlock.Visible then
        return
    end
    local costFrame = luckyBlock:FindFirstChild("Cost")
    if not costFrame then return end
    local title = costFrame:FindFirstChild("Title")
    if not title or not title:IsA("TextLabel") then return end
    local costText = title.Text
    local costNum = tonumber(costText:gsub("[^%d]", ""))
    if not costNum then return end
    local currencies = main:FindFirstChild("Currencies")
    if not currencies then return end
    local cash = currencies:FindFirstChild("Cash")
    if not cash then return end
    local list = cash:FindFirstChild("List")
    if not list then return end
    local amount = list:FindFirstChild("Amount")
    if not amount or not amount:IsA("TextLabel") then return end
    local cashText = amount.Text
    local cashNum = tonumber(cashText:gsub("[^%d]", ""))
    if not cashNum then return end
    if cashNum >= costNum then
        local event = ReplicatedStorage:FindFirstChild("Paper")
        if event then
            local remotes = event:FindFirstChild("Remotes")
            if remotes then
                local remoteFunc = remotes:FindFirstChild("__remotefunction")
                if remoteFunc then
                    remoteFunc:InvokeServer("Open Lucky Block")
                end
            end
        end
    else
        holdingObject:Destroy()
    end
end

local claimLuckyBlockButton = farmTab:AddButton({
    Text = "Claim LuckyBlocks",
    Description = "Claim the lucky block if you have enough cash, otherwise destroy it",
    Icon = "Lucide:gem",
    Callback = function()
        claimLuckyBlock()
    end,
})

local autoClaimToggle = farmTab:AddToggle({
    Text = "Auto Claim LuckyBlocks",
    Description = "Continuously claim lucky blocks",
    Default = false,
    Flag = "AutoClaim",
})

local autoClaimThread = nil

local function startAutoClaim()
    if autoClaimThread then return end
    autoClaimThread = task.spawn(function()
        while autoClaimToggle:Get() do
            claimLuckyBlock()
            task.wait(0.8)
        end
    end)
end

local function stopAutoClaim()
    if autoClaimThread then
        task.cancel(autoClaimThread)
        autoClaimThread = nil
    end
end

autoClaimToggle:OnChanged(function(value)
    if value then
        startAutoClaim()
    else
        stopAutoClaim()
    end
end)

farmTab:AddDivider()

local function runAll()
    pickupEggsCycle()
    collectCash()
    mergeChickens()
    for _, amount in ipairs(buyAmounts) do
        teleportToBuyButton(amount)
        task.wait(0.3)
    end
    claimLuckyBlock()
end

local runAllButton = farmTab:AddButton({
    Text = "Run All",
    Description = "Execute all actions once (pickup, collect, merge, buy, claim)",
    Icon = "Lucide:play",
    Callback = function()
        runAll()
    end,
})

local autoRunAllToggle = farmTab:AddToggle({
    Text = "Auto Run All",
    Description = "Continuously loop all actions",
    Default = false,
    Flag = "AutoRunAll",
})

local autoRunAllThread = nil

local function startAutoRunAll()
    if autoRunAllThread then return end
    autoRunAllThread = task.spawn(function()
        while autoRunAllToggle:Get() do
            runAll()
            task.wait(2)
        end
    end)
end

local function stopAutoRunAll()
    if autoRunAllThread then
        task.cancel(autoRunAllThread)
        autoRunAllThread = nil
    end
end

autoRunAllToggle:OnChanged(function(value)
    if value then
        startAutoRunAll()
    else
        stopAutoRunAll()
    end
end)

farmTab:AddDivider()

local noclipToggle = farmTab:AddToggle({
    Text = "Noclip",
    Description = "Toggle noclip (pass through walls)",
    Default = false,
    Flag = "Noclip",
})

noclipToggle:OnChanged(function(value)
    toggleNoclip(value)
end)

local miscTab = window:AddTab({ Name = "Misc", Icon = "Lucide:box" })

local espSection = miscTab:AddSection("ESP", "Lucide:eye")

local eggEspToggle = miscTab:AddToggle({
    Text = "Egg ESP",
    Description = "Highlight all eggs in the workspace",
    Default = false,
    Flag = "EggESP",
})

local highlights = {}
local espConnection = nil

local function addHighlights()
    local eggsFolder = workspace:FindFirstChild("Eggs")
    if not eggsFolder then return end
    for _, child in ipairs(eggsFolder:GetChildren()) do
        if child:IsA("Model") or child:IsA("BasePart") then
            if not child:FindFirstChild("EggESP_Highlight") then
                local highlight = Instance.new("Highlight")
                highlight.Name = "EggESP_Highlight"
                highlight.FillColor = Color3.fromRGB(255, 255, 255)
                highlight.FillTransparency = 0.5
                highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                highlight.OutlineTransparency = 0
                highlight.Parent = child
                table.insert(highlights, highlight)
            end
        end
    end
end

local function removeHighlights()
    for _, h in ipairs(highlights) do
        h:Destroy()
    end
    table.clear(highlights)
end

local function toggleEggESP(state)
    if state then
        addHighlights()
        if not espConnection then
            local eggsFolder = workspace:FindFirstChild("Eggs")
            if eggsFolder then
                espConnection = eggsFolder.ChildAdded:Connect(function(child)
                    if eggEspToggle:Get() and (child:IsA("Model") or child:IsA("BasePart")) then
                        if not child:FindFirstChild("EggESP_Highlight") then
                            local highlight = Instance.new("Highlight")
                            highlight.Name = "EggESP_Highlight"
                            highlight.FillColor = Color3.fromRGB(255, 255, 255)
                            highlight.FillTransparency = 0.5
                            highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                            highlight.OutlineTransparency = 0
                            highlight.Parent = child
                            table.insert(highlights, highlight)
                        end
                    end
                end)
            end
        end
    else
        removeHighlights()
        if espConnection then
            espConnection:Disconnect()
            espConnection = nil
        end
    end
end

eggEspToggle:OnChanged(function(value)
    toggleEggESP(value)
end)

if isMobile then
    window:SetScaleRange(1.0, 1.5)
end