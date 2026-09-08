local vind = loadstring(game:HttpGet("https://raw.githubusercontent.com/Skinny-yz/VVind-UI/refs/heads/main/src.lua"))()

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local camera = workspace.CurrentCamera

local PRODUCT_ID = 2689428579

local function randomString()
    local length = math.random(10,20)
    local array = {}
    for i = 1, length do
        array[i] = string.char(math.random(32, 126))
    end
    return table.concat(array)
end

local function fireProductPurchase(playerId, productId)
    local success = pcall(function()
        MarketplaceService:SignalPromptProductPurchaseFinished(playerId, productId, true)
    end)
    if not success then
        pcall(function()
            if type(firesignal) == "function" then
                firesignal(MarketplaceService.PromptProductPurchaseFinished, playerId, productId, true)
            end
        end)
    end
end

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

local autoCashRunning = false
local autoCashThread = nil

local function startAutoCash()
    if autoCashRunning then return end
    autoCashRunning = true
    autoCashThread = task.spawn(function()
        while autoCashRunning do
            fireProductPurchase(LocalPlayer.UserId, PRODUCT_ID)
            task.wait()
        end
    end)
end

local function stopAutoCash()
    autoCashRunning = false
    if autoCashThread then
        task.cancel(autoCashThread)
        autoCashThread = nil
    end
end

local teleportLocations = {
    {
        Name = "🏘️ Apartments",
        CFrame = CFrame.new(-399.105591, -48.7141113, -42.1958313, 0.573598742, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, 0.573598742)
    },
    {
        Name = "🚗 Cars",
        CFrame = CFrame.new(-578.330627, 25.7412872, -218.104385, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    },
    {
        Name = "🎭 Masks",
        CFrame = CFrame.new(-272.552307, 17.5224247, -664.653259, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    },
    {
        Name = "🔫 GunStore 1",
        CFrame = CFrame.new(-584.63678, 24.8084087, -52.4159622, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    },
    {
        Name = "🔫 GunStore 2",
        CFrame = CFrame.new(-259.931946, 21.6566772, -729.07782, 5.57303429e-05, 1.93715096e-05, 1, 0.620050907, -0.784561515, -1.93715096e-05, 0.784561515, 0.620050907, -5.56707382e-05)
    },
    {
        Name = "🏦 Bank",
        CFrame = CFrame.new(-239.950485, 19.4689236, -25.1656246, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    },
    {
        Name = "🤫 BlackMarket",
        CFrame = CFrame.new(-439.86499, 14.448, -23.927, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    },
    {
        Name = "🍝 PastaJob",
        CFrame = CFrame.new(-493.133484, 17.8960915, -831.177429, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    }
}

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
            if not data or not data.data then break end
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
        vind:Notify({
            Title = "ServerHop",
            Text = "No other servers available.",
            Type = "warning",
            Duration = 3,
        })
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
    local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local SPEED = 0

    local function FLY()
        FLYING = true
        local BG = Instance.new('BodyGyro')
        local BV = Instance.new('BodyVelocity')
        BG.P = 9e4
        BG.Parent = T
        BV.Parent = T
        BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.CFrame = T.CFrame
        BV.Velocity = Vector3.new(0, 0, 0)
        BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        flyLoop = RunService.Heartbeat:Connect(function()
            if not T.Parent then
                FLYING = false
                flyLoop:Disconnect()
                return
            end
            local camera = workspace.CurrentCamera
            if not vfly and humanoid then
                humanoid.PlatformStand = true
            end

            if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                SPEED = 50
            elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                SPEED = 0
            end
            if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                BV.Velocity = ((camera.CFrame.LookVector * (CONTROL.F + CONTROL.B)) + ((camera.CFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - camera.CFrame.p)) * SPEED
                lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
            elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                BV.Velocity = ((camera.CFrame.LookVector * (lCONTROL.F + lCONTROL.B)) + ((camera.CFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - camera.CFrame.p)) * SPEED
            else
                BV.Velocity = Vector3.new(0, 0, 0)
            end
            BG.CFrame = camera.CFrame
        end)
    end

    flyKeyDown = UserInputService.InputBegan:Connect(function(input, processed)
        if processed then return end
        if input.KeyCode == Enum.KeyCode.W then
            CONTROL.F = (vfly and 1 or 1) * iyflyspeed
        elseif input.KeyCode == Enum.KeyCode.S then
            CONTROL.B = -(vfly and 1 or 1) * iyflyspeed
        elseif input.KeyCode == Enum.KeyCode.A then
            CONTROL.L = -(vfly and 1 or 1) * iyflyspeed
        elseif input.KeyCode == Enum.KeyCode.D then
            CONTROL.R = (vfly and 1 or 1) * iyflyspeed
        elseif input.KeyCode == Enum.KeyCode.E and QEfly then
            CONTROL.Q = (vfly and 1 or 1) * iyflyspeed * 2
        elseif input.KeyCode == Enum.KeyCode.Q and QEfly then
            CONTROL.E = -(vfly and 1 or 1) * iyflyspeed * 2
        end
        pcall(function() camera.CameraType = Enum.CameraType.Track end)
    end)

    flyKeyUp = UserInputService.InputEnded:Connect(function(input, processed)
        if processed then return end
        if input.KeyCode == Enum.KeyCode.W then
            CONTROL.F = 0
        elseif input.KeyCode == Enum.KeyCode.S then
            CONTROL.B = 0
        elseif input.KeyCode == Enum.KeyCode.A then
            CONTROL.L = 0
        elseif input.KeyCode == Enum.KeyCode.D then
            CONTROL.R = 0
        elseif input.KeyCode == Enum.KeyCode.E then
            CONTROL.Q = 0
        elseif input.KeyCode == Enum.KeyCode.Q then
            CONTROL.E = 0
        end
    end)

    FLY()
end

local function NOFLY()
    FLYING = false
    if flyKeyDown then flyKeyDown:Disconnect() flyKeyDown = nil end
    if flyKeyUp then flyKeyUp:Disconnect() flyKeyUp = nil end
    if flyLoop then flyLoop:Disconnect() flyLoop = nil end
    local hum = getHumanoid()
    if hum then hum.PlatformStand = false end
    pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
    for _, v in ipairs(getCharacter():GetDescendants()) do
        if v:IsA("BodyVelocity") or v:IsA("BodyGyro") then
            v:Destroy()
        end
    end
end

CFspeed = 50
local CFloop
local function startCFly()
    NOFLY()
    local char = getCharacter()
    if not char then return end
    local hum = char:FindFirstChildOfClass('Humanoid')
    if hum then hum.PlatformStand = true end
    local Head = char:WaitForChild("Head")
    Head.Anchored = true
    if CFloop then CFloop:Disconnect() end
    CFloop = RunService.Heartbeat:Connect(function(deltaTime)
        local moveDirection = (hum and hum.MoveDirection or Vector3.new()) * (CFspeed * deltaTime)
        local headCFrame = Head.CFrame
        local camera = workspace.CurrentCamera
        local cameraCFrame = camera.CFrame
        local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
        cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
        local cameraPosition = cameraCFrame.Position
        local headPosition = headCFrame.Position

        local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
        Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
    end)
end

local function stopCFly()
    if CFloop then CFloop:Disconnect() CFloop = nil end
    local char = getCharacter()
    if char then
        local hum = char:FindFirstChildOfClass('Humanoid')
        if hum then hum.PlatformStand = false end
        local Head = char:FindFirstChild("Head")
        if Head then Head.Anchored = false end
    end
end

local function startVfly()
    NOFLY()
    sFLY(true)
end

local velocityHandlerName = randomString()
local gyroHandlerName = randomString()
local mfly1, mfly2

local function unmobilefly()
    FLYING = false
    if mfly1 then mfly1:Disconnect() mfly1 = nil end
    if mfly2 then mfly2:Disconnect() mfly2 = nil end
    local root = getRootPart()
    if root then
        for _, v in ipairs(root:GetDescendants()) do
            if v.Name == velocityHandlerName or v.Name == gyroHandlerName then
                v:Destroy()
            end
        end
    end
    local hum = getHumanoid()
    if hum then hum.PlatformStand = false end
end

local function mobilefly(vfly)
    unmobilefly()
    FLYING = true
    local root = getRootPart()
    if not root then return end
    local camera = workspace.CurrentCamera
    local controlModule = require(LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))

    local bv = Instance.new("BodyVelocity")
    bv.Name = velocityHandlerName
    bv.Parent = root
    bv.MaxForce = Vector3.new(0, 0, 0)
    bv.Velocity = Vector3.new(0, 0, 0)

    local bg = Instance.new("BodyGyro")
    bg.Name = gyroHandlerName
    bg.Parent = root
    bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
    bg.P = 1000
    bg.D = 50

    mfly1 = LocalPlayer.CharacterAdded:Connect(function()
        task.wait()
        local newRoot = getRootPart()
        if newRoot then
            local bv2 = Instance.new("BodyVelocity")
            bv2.Name = velocityHandlerName
            bv2.Parent = newRoot
            bv2.MaxForce = Vector3.new(0, 0, 0)
            bv2.Velocity = Vector3.new(0, 0, 0)
            local bg2 = Instance.new("BodyGyro")
            bg2.Name = gyroHandlerName
            bg2.Parent = newRoot
            bg2.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg2.P = 1000
            bg2.D = 50
        end
    end)

    mfly2 = RunService.RenderStepped:Connect(function()
        local root2 = getRootPart()
        if not root2 then return end
        local bv3 = root2:FindFirstChild(velocityHandlerName)
        local bg3 = root2:FindFirstChild(gyroHandlerName)
        if not bv3 or not bg3 then return end
        local hum = getHumanoid()
        bv3.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        bg3.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        if not vfly and hum then hum.PlatformStand = true end
        bg3.CFrame = camera.CoordinateFrame
        bv3.Velocity = Vector3.new(0, 0, 0)
        local direction = controlModule:GetMoveVector()
        local speed = iyflyspeed * 50
        if direction.X > 0 then
            bv3.Velocity = bv3.Velocity + camera.CFrame.RightVector * (direction.X * speed)
        end
        if direction.X < 0 then
            bv3.Velocity = bv3.Velocity + camera.CFrame.RightVector * (direction.X * speed)
        end
        if direction.Z > 0 then
            bv3.Velocity = bv3.Velocity - camera.CFrame.LookVector * (direction.Z * speed)
        end
        if direction.Z < 0 then
            bv3.Velocity = bv3.Velocity - camera.CFrame.LookVector * (direction.Z * speed)
        end
    end)
end

local window = vind:CreateWindow({
    Title = "AvHub - Hood Shootout",
    Subtitle = "Hood Shootout",
    Icon = "rbxassetid://101597703020874",
    Size = UDim2.fromOffset(500, 450),
    Draggable = true,
    Resizable = true,
})

local homeTab = window:AddTab({
    Name = "Home",
    Icon = "Lucide:home",
})

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
        local info = string.format(
            "Name: %s\nHealth: %s / %s\nWalkSpeed: %s\nJumpPower: %s",
            name,
            health,
            maxHealth,
            ws,
            jp
        )
        if info and info ~= "" then
            playerInfo:Set(info)
        end
    end)
end

task.spawn(function()
    while true do
        updatePlayerInfo()
        task.wait(1)
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
                    local oldPos = root.Position
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

local playerTab = window:AddTab({
    Name = "Player",
    Icon = "user",
})

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
    if not gui then return false end
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

local farmTab = window:AddTab({
    Name = "AutoFarm",
    Icon = "box",
})

local autoCashToggle = farmTab:AddToggle({
    Text = "Auto Cash",
    Description = "Automatically purchase the cash product",
    Default = false,
    Flag = "AutoCash",
})

autoCashToggle:OnChanged(function(value)
    if value then
        startAutoCash()
    else
        stopAutoCash()
    end
end)

local refillButton = farmTab:AddButton({
    Text = "Refill Ammo",
    Description = "Refill ammo from the nearest ammo box",
    Icon = "Lucide:ammo",
    Callback = function()
        pcall(function()
            local ammo1Prompt = game:GetChildren()[1]:GetChildren()[31]:GetChildren()[1]:GetChildren()[3]:GetChildren()[1]
            local ammo1Part = game:GetChildren()[1]:GetChildren()[31]:GetChildren()[1]
            local ammo2Prompt = game:GetChildren()[1]:GetChildren()[45]:GetChildren()[1]:GetChildren()[3]:GetChildren()[1]

            local chosenPrompt = nil
            if ammo1Part and ammo1Part:IsA("BasePart") and ammo1Part.Transparency == 0 then
                chosenPrompt = ammo1Prompt
            elseif ammo2Prompt and ammo2Prompt:IsA("ProximityPrompt") then
                chosenPrompt = ammo2Prompt
            end

            if chosenPrompt and chosenPrompt:IsA("ProximityPrompt") then
                if chosenPrompt.HoldDuration ~= 0 then
                    chosenPrompt.HoldDuration = 0
                end
                fireproximityprompt(chosenPrompt)
            else
                vind:Notify({
                    Title = "Refill Ammo",
                    Text = "No ammo box available.",
                    Type = "error",
                    Duration = 3,
                })
            end
        end)
    end,
})

local teleportTab = window:AddTab({
    Name = "Teleports",
    Icon = "map-pin",
})

local locationNames = {}
for _, loc in ipairs(teleportLocations) do
    table.insert(locationNames, loc.Name)
end

local teleportDropdown = teleportTab:AddDropdown({
    Text = "Select Location",
    Description = "Choose a teleport destination",
    Options = locationNames,
    Default = locationNames[1],
    Flag = "TeleportLocation",
})

local function teleportToLocation(locationName)
    local root = getRootPart()
    if not root then return end
    local targetCFrame = nil
    for _, loc in ipairs(teleportLocations) do
        if loc.Name == locationName then
            targetCFrame = loc.CFrame
            break
        end
    end
    if targetCFrame then
        root.CFrame = targetCFrame
    end
end

teleportDropdown:OnChanged(function(selected)
    teleportToLocation(selected)
end)

local teleportButton = teleportTab:AddButton({
    Text = "Teleport Now",
    Description = "Teleport to the selected location instantly",
    Icon = "send",
    Callback = function()
        local selected = teleportDropdown:Get()
        if selected then
            teleportToLocation(selected)
        end
    end,
})

local gunTab = window:AddTab({
    Name = "Guns",
    Icon = "Lucide:crosshair",
})

local gunList = {
    { Name = "Glock17", ModelName = "Glock 17" },
    { Name = "Draco", ModelName = "Draco" },
    { Name = "AR15", ModelName = "AR-15" },
    { Name = "MP5", ModelName = "MP5" },
    { Name = "PLR16", ModelName = "PLR-16" },
    { Name = "HellupAK", ModelName = "Hellup AK" },
    { Name = "TEC9", ModelName = "TEC-9" },
}

local gunNames = {}
for _, gun in ipairs(gunList) do
    table.insert(gunNames, gun.Name)
end

local Remote = game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Gun")

local function fireGunPrompt(gunName)
    for _, gun in ipairs(gunList) do
        if gun.Name == gunName then
            local weaponModel = workspace.Weapons:FindFirstChild(gun.ModelName)
            if not weaponModel then
                vind:Notify({
                    Title = "Gun",
                    Text = "Weapon model not found: " .. gun.ModelName,
                    Type = "error",
                    Duration = 3,
                })
                return
            end
            local price = weaponModel:FindFirstChild("Price")
            if not price then
                vind:Notify({
                    Title = "Gun",
                    Text = "Price not found for " .. gun.ModelName,
                    Type = "error",
                    Duration = 3,
                })
                return
            end
            pcall(function()
                firesignal(Remote.OnClientEvent, table.unpack({ price.Value, weaponModel }))
            end)
            break
        end
    end
end

local gunDropdown = gunTab:AddDropdown({
    Text = "Select Gun",
    Description = "Choose a gun to purchase",
    Options = gunNames,
    Default = gunNames[1],
    Flag = "GunSelection",
})

gunDropdown:OnChanged(function(selected)
    fireGunPrompt(selected)
end)

local gunButton = gunTab:AddButton({
    Text = "Get Selected Gun",
    Description = "Purchase the selected gun via remote",
    Icon = "shopping-cart",
    Callback = function()
        local selected = gunDropdown:Get()
        if selected then
            fireGunPrompt(selected)
        end
    end,
})

gunTab:AddDivider()

local autoGunDropdown = gunTab:AddDropdown({
    Text = "Auto-Buy Gun",
    Description = "Select gun to automatically buy on respawn/rejoin/serverhop",
    Options = gunNames,
    Default = gunNames[1],
    Flag = "AutoGunSelection",
})

local autoBuyToggle = gunTab:AddToggle({
    Text = "Enable Auto-Buy",
    Description = "Automatically buy the selected gun when you spawn",
    Default = false,
    Flag = "AutoBuyToggle",
})

local function performAutoBuy()
    if not autoBuyToggle:Get() then return end
    local selected = autoGunDropdown:Get()
    if selected then
        task.delay(1.5, function()
            pcall(function()
                for _, gun in ipairs(gunList) do
                    if gun.Name == selected then
                        local weaponModel = workspace.Weapons:FindFirstChild(gun.ModelName)
                        if weaponModel then
                            local price = weaponModel:FindFirstChild("Price")
                            if price then
                                firesignal(Remote.OnClientEvent, table.unpack({ price.Value, weaponModel }))
                            end
                        end
                        break
                    end
                end
            end)
        end)
    end
end

LocalPlayer.CharacterAdded:Connect(performAutoBuy)
performAutoBuy()

local visualTab = window:AddTab({
    Name = "Visuals",
    Icon = "eye",
})

local fovSlider = visualTab:AddSlider({
    Text = "Field of View",
    Description = "Change camera FOV",
    Min = 70,
    Max = 120,
    Increment = 1,
    Default = 70,
    Flag = "FOV",
})

fovSlider:OnChanged(function(value)
    camera.FieldOfView = value
end)

visualTab:AddDivider()

local crosshairSize = visualTab:AddSlider({
    Text = "Crosshair Size",
    Description = "Size of custom crosshair dot",
    Min = 1,
    Max = 20,
    Increment = 1,
    Default = 5,
    Flag = "CrosshairSize",
})

local crosshairColor = visualTab:AddColorPicker({
    Text = "Crosshair Color",
    Default = Color3.fromRGB(255, 0, 0),
    Flag = "CrosshairColor",
})

local crosshairDot = nil
local function createCrosshair()
    if crosshairDot then crosshairDot:Remove() end
    local drawing = Drawing
    if not drawing then return end
    crosshairDot = Drawing.new("Circle")
    crosshairDot.Thickness = 1
    crosshairDot.NumSides = 32
    crosshairDot.Filled = true
    crosshairDot.Visible = true
    crosshairDot.Transparency = 1
    crosshairDot.Radius = crosshairSize:Get()
    crosshairDot.Color = crosshairColor:Get()
    crosshairDot.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    crosshairDot.Visible = true
end

local function updateCrosshair()
    if crosshairDot then
        crosshairDot.Radius = crosshairSize:Get()
        crosshairDot.Color = crosshairColor:Get()
        crosshairDot.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    end
end

crosshairSize:OnChanged(updateCrosshair)
crosshairColor:OnChanged(updateCrosshair)

local crosshairToggle = visualTab:AddToggle({
    Text = "Show Crosshair",
    Description = "Toggle custom crosshair overlay",
    Default = true,
    Flag = "CrosshairToggle",
})

crosshairToggle:OnChanged(function(value)
    if crosshairDot then
        crosshairDot.Visible = value
    end
end)

task.spawn(function()
    while true do
        if crosshairToggle:Get() and not crosshairDot then
            local ok = pcall(createCrosshair)
            if not ok then break end
        end
        task.wait(1)
    end
end)

visualTab:AddDivider()

local espEnabled = visualTab:AddToggle({
    Text = "ESP Enabled",
    Description = "Show player boxes, names, health, distance",
    Default = false,
    Flag = "ESP",
})

local showBoxes = visualTab:AddToggle({
    Text = "Show Boxes",
    Description = "Draw boxes around players",
    Default = true,
    Flag = "ESPBoxes",
})

local showNames = visualTab:AddToggle({
    Text = "Show Names",
    Description = "Show player names",
    Default = true,
    Flag = "ESPNames",
})

local showHealth = visualTab:AddToggle({
    Text = "Show Health",
    Description = "Show health bar on the right of boxes",
    Default = true,
    Flag = "ESPHealth",
})

local showDistance = visualTab:AddToggle({
    Text = "Show Distance",
    Description = "Show distance inside box at bottom",
    Default = true,
    Flag = "ESPDistance",
})

local espColor = visualTab:AddColorPicker({
    Text = "ESP Color",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "ESPColor",
})

local espObjects = {}

local function clearESP()
    for _, obj in ipairs(espObjects) do
        pcall(function() obj:Remove() end)
    end
    table.clear(espObjects)
end

local function updateESP()
    if not espEnabled:Get() then
        clearESP()
        return
    end
    local drawing = Drawing
    if not drawing then return end

    local players = Players:GetPlayers()
    local localChar = getCharacter()
    local localRoot = localChar and localChar:FindFirstChild("HumanoidRootPart")
    for _, player in ipairs(players) do
        if player == LocalPlayer then continue end
        local char = player.Character
        if not char or not char.Parent then continue end
        local root = char:FindFirstChild("HumanoidRootPart")
        local head = char:FindFirstChild("Head")
        if not root or not head then continue end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hum or hum.Health <= 0 then continue end

        local pos, onScreen = camera:WorldToViewportPoint(root.Position)
        if not onScreen then continue end

        local espObject = espObjects[player]
        if not espObject then
            espObject = {
                Box = drawing.new("Rectangle"),
                Name = drawing.new("Text"),
                Health = drawing.new("Rectangle"),
                HealthText = drawing.new("Text"),
                Distance = drawing.new("Text"),
            }
            espObject.Box.Thickness = 2
            espObject.Box.Filled = false
            espObject.Box.Visible = true
            espObject.Box.Color = espColor:Get()
            espObject.Name.Font = 1
            espObject.Name.Size = 14
            espObject.Name.Center = true
            espObject.Name.Visible = true
            espObject.Name.Color = espColor:Get()
            espObject.Health.Filled = true
            espObject.Health.Visible = true
            espObject.Health.Color = Color3.fromRGB(0, 255, 0)
            espObject.HealthText.Font = 1
            espObject.HealthText.Size = 10
            espObject.HealthText.Visible = true
            espObject.HealthText.Color = Color3.fromRGB(255, 255, 255)
            espObject.HealthText.Center = true
            espObject.Distance.Font = 1
            espObject.Distance.Size = 10
            espObject.Distance.Center = true
            espObject.Distance.Visible = true
            espObject.Distance.Color = Color3.fromRGB(200, 200, 200)
            espObjects[player] = espObject
        end

        local size = math.max(3, (root.Position - head.Position).Magnitude * 1.5)
        local boxSize = Vector2.new(size, size * 2)
        local boxPos = Vector2.new(pos.X - boxSize.X / 2, pos.Y - boxSize.Y)

        local healthWidth = 4
        local healthHeight = boxSize.Y
        local healthX = pos.X + boxSize.X / 2 + 3

        espObject.Box.Size = boxSize
        espObject.Box.Position = boxPos
        espObject.Box.Color = espColor:Get()
        espObject.Box.Visible = showBoxes:Get()

        espObject.Name.Text = player.Name
        espObject.Name.Position = Vector2.new(pos.X, boxPos.Y - 20)
        espObject.Name.Visible = showNames:Get()

        local healthPercent = hum.Health / hum.MaxHealth
        local healthColor = Color3.fromRGB(255 * (1 - healthPercent), 255 * healthPercent, 0)
        espObject.Health.Size = Vector2.new(healthWidth, healthHeight * healthPercent)
        espObject.Health.Position = Vector2.new(healthX, pos.Y + boxSize.Y / 2 - healthHeight * healthPercent)
        espObject.Health.Color = healthColor
        espObject.Health.Visible = showHealth:Get()

        espObject.HealthText.Text = string.format("%.0f", hum.Health)
        espObject.HealthText.Position = Vector2.new(healthX + healthWidth / 2, pos.Y + boxSize.Y / 2)
        espObject.HealthText.Visible = showHealth:Get()

        local dist = localRoot and math.floor((root.Position - localRoot.Position).Magnitude) or 0
        espObject.Distance.Text = dist .. "m"
        espObject.Distance.Position = Vector2.new(pos.X, boxPos.Y + boxSize.Y + 14)
        espObject.Distance.Visible = showDistance:Get()
    end

    for player, obj in pairs(espObjects) do
        if not player or not player.Parent then
            for _, v in pairs(obj) do
                pcall(function() v:Remove() end)
            end
            espObjects[player] = nil
        end
    end
end

local espLoop = nil
local function startESPLoop()
    if espLoop then return end
    espLoop = RunService.RenderStepped:Connect(function()
        updateESP()
    end)
end

local function stopESPLoop()
    if espLoop then
        espLoop:Disconnect()
        espLoop = nil
    end
    clearESP()
end

espEnabled:OnChanged(function(value)
    if value then
        startESPLoop()
    else
        stopESPLoop()
    end
end)

showBoxes:OnChanged(function() end)
showNames:OnChanged(function() end)
showHealth:OnChanged(function() end)
showDistance:OnChanged(function() end)
espColor:OnChanged(function() end)

local movementTab = window:AddTab({
    Name = "Movement",
    Icon = "move",
})

local flyModeDropdown = movementTab:AddDropdown({
    Text = "Fly Mode",
    Description = "Select flight mode",
    Options = {"Normal", "CFrame", "Vehicle"},
    Default = "Normal",
    Flag = "FlyMode",
})

local flyToggle = movementTab:AddToggle({
    Text = "Fly",
    Description = "Enable flight mode",
    Default = false,
    Flag = "Fly",
})

local flySpeedSlider = movementTab:AddSlider({
    Text = "Fly Speed",
    Description = "Set flight speed",
    Min = 1,
    Max = 200,
    Increment = 1,
    Default = 50,
    Flag = "FlySpeed",
})

flySpeedSlider:OnChanged(function(value)
    iyflyspeed = value
    CFSpeed = value
end)

local qeToggle = movementTab:AddToggle({
    Text = "Q/E Controls",
    Description = "Enable Q and E for up/down",
    Default = true,
    Flag = "QEFly",
})

qeToggle:OnChanged(function(value)
    QEfly = value
end)

local function startFly()
    local mode = flyModeDropdown:Get()
    if mode == "Normal" then
        if UserInputService.TouchEnabled and not UserInputService.MouseEnabled then
            mobilefly(false)
        else
            NOFLY()
            sFLY(false)
        end
    elseif mode == "CFrame" then
        startCFly()
    elseif mode == "Vehicle" then
        if UserInputService.TouchEnabled and not UserInputService.MouseEnabled then
            mobilefly(true)
        else
            NOFLY()
            sFLY(true)
        end
    end
end

local function stopFly()
    NOFLY()
    stopCFly()
    unmobilefly()
end

flyToggle:OnChanged(function(value)
    if value then
        startFly()
    else
        stopFly()
    end
end)

flyModeDropdown:OnChanged(function()
    if flyToggle:Get() then
        stopFly()
        startFly()
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    if flyToggle:Get() then
        task.wait(0.5)
        startFly()
    end
end)

local noclipToggle = movementTab:AddToggle({
    Text = "Noclip",
    Description = "Pass through walls",
    Default = false,
    Flag = "Noclip",
})

local function setNoclip(enabled)
    local char = getCharacter()
    if not char then return end
    for _, part in ipairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not enabled
        end
    end
end

noclipToggle:OnChanged(function(value)
    setNoclip(value)
end)

LocalPlayer.CharacterAdded:Connect(function()
    if noclipToggle:Get() then
        setNoclip(true)
    end
end)

local keybindTab = window:AddTab({
    Name = "Keybinds",
    Icon = "keyboard",
})

local holyKeybind = keybindTab:AddKeybind({
    Text = "Holy ServerHop",
    Description = "Press to instantly server hop",
    Default = Enum.KeyCode.End,
    Flag = "HolyKeybind",
})

holyKeybind:OnChanged(function(key)
    if key then
        serverHop()
    end
end)

local teleportKeybind = keybindTab:AddKeybind({
    Text = "Teleport to Selected",
    Description = "Press to teleport to selected location",
    Default = Enum.KeyCode.T,
    Flag = "TeleportKeybind",
})

teleportKeybind:OnChanged(function(key)
    if key then
        local loc = teleportDropdown:Get()
        if loc then teleportToLocation(loc) end
    end
end)

local cashKeybind = keybindTab:AddKeybind({
    Text = "Toggle Auto Cash",
    Description = "Press to toggle auto cash",
    Default = Enum.KeyCode.G,
    Flag = "CashKeybind",
})

cashKeybind:OnChanged(function(key)
    if key then
        autoCashToggle:Set(not autoCashToggle:Get())
    end
end)

local refillKeybind = keybindTab:AddKeybind({
    Text = "Refill Ammo",
    Description = "Press to refill ammo",
    Default = Enum.KeyCode.R,
    Flag = "RefillKeybind",
})

refillKeybind:OnChanged(function(key)
    if key then
        refillButton.Callback()
    end
end)

local buyGunKeybind = keybindTab:AddKeybind({
    Text = "Buy Selected Gun",
    Description = "Press to buy selected gun",
    Default = Enum.KeyCode.H,
    Flag = "BuyGunKeybind",
})

buyGunKeybind:OnChanged(function(key)
    if key then
        local gun = gunDropdown:Get()
        if gun then fireGunPrompt(gun) end
    end
end)

local flyKeybind = keybindTab:AddKeybind({
    Text = "Toggle Fly",
    Description = "Press to toggle fly",
    Default = Enum.KeyCode.F,
    Flag = "FlyKeybind",
})

flyKeybind:OnChanged(function(key)
    if key then
        flyToggle:Set(not flyToggle:Get())
    end
end)

local noclipKeybind = keybindTab:AddKeybind({
    Text = "Toggle Noclip",
    Description = "Press to toggle noclip",
    Default = Enum.KeyCode.N,
    Flag = "NoclipKeybind",
})

noclipKeybind:OnChanged(function(key)
    if key then
        noclipToggle:Set(not noclipToggle:Get())
    end
end)

local espKeybind = keybindTab:AddKeybind({
    Text = "Toggle ESP",
    Description = "Press to toggle ESP",
    Default = Enum.KeyCode.E,
    Flag = "ESPKeybind",
})

espKeybind:OnChanged(function(key)
    if key then
        espEnabled:Set(not espEnabled:Get())
    end
end)

local settingsTab = window:AddTab({
    Name = "Settings",
    Icon = "settings",
})

settingsTab:AddParagraph({
    Title = "Config Management",
    Text = "Save and load your settings.",
})

settingsTab:AddButton({
    Text = "Save Config",
    Description = "Save current settings to a file",
    Icon = "save",
    Callback = function()
        local ok, err = vind.SaveConfig("AvHubConfig")
        if ok then
            vind:Notify({ Title = "Config Saved", Text = "Settings saved successfully.", Type = "success", Duration = 3 })
        else
            vind:Notify({ Title = "Save Failed", Text = tostring(err), Type = "error", Duration = 3 })
        end
    end,
})

settingsTab:AddButton({
    Text = "Load Config",
    Description = "Load previously saved settings",
    Icon = "folder-open",
    Callback = function()
        local ok, err = vind.LoadConfig("AvHubConfig")
        if ok then
            vind:Notify({ Title = "Config Loaded", Text = "Settings restored.", Type = "success", Duration = 3 })
            wsToggle:Set(wsToggle:Get())
            wsSlider:Set(wsSlider:Get())
            jpToggle:Set(jpToggle:Get())
            jpSlider:Set(jpSlider:Get())
            instantRespawnToggle:Set(instantRespawnToggle:Get())
            antiAfkToggle:Set(antiAfkToggle:Get())
            autoCashToggle:Set(autoCashToggle:Get())
            teleportDropdown:Set(teleportDropdown:Get())
            gunDropdown:Set(gunDropdown:Get())
            autoGunDropdown:Set(autoGunDropdown:Get())
            autoBuyToggle:Set(autoBuyToggle:Get())
            fovSlider:Set(fovSlider:Get())
            crosshairSize:Set(crosshairSize:Get())
            crosshairColor:Set(crosshairColor:Get())
            crosshairToggle:Set(crosshairToggle:Get())
            espEnabled:Set(espEnabled:Get())
            showBoxes:Set(showBoxes:Get())
            showNames:Set(showNames:Get())
            showHealth:Set(showHealth:Get())
            showDistance:Set(showDistance:Get())
            espColor:Set(espColor:Get())
            flyToggle:Set(flyToggle:Get())
            flyModeDropdown:Set(flyModeDropdown:Get())
            flySpeedSlider:Set(flySpeedSlider:Get())
            qeToggle:Set(qeToggle:Get())
            noclipToggle:Set(noclipToggle:Get())
            holyKeybind:Set(holyKeybind:Get())
            teleportKeybind:Set(teleportKeybind:Get())
            cashKeybind:Set(cashKeybind:Get())
            refillKeybind:Set(refillKeybind:Get())
            buyGunKeybind:Set(buyGunKeybind:Get())
            flyKeybind:Set(flyKeybind:Get())
            noclipKeybind:Set(noclipKeybind:Get())
            espKeybind:Set(espKeybind:Get())
        else
            vind:Notify({ Title = "Load Failed", Text = tostring(err), Type = "error", Duration = 3 })
        end
    end,
})

settingsTab:AddButton({
    Text = "Reset Defaults",
    Description = "Reset all settings to default values",
    Icon = "rotate-ccw",
    Callback = function()
        vind:Confirm({
            Title = "Reset Settings",
            Text = "Are you sure you want to reset all settings to default?",
            ConfirmText = "Reset",
            CancelText = "Cancel",
            Danger = true,
            Callback = function(confirmed)
                if confirmed then
                    wsToggle:Set(false)
                    wsSlider:Set(16)
                    jpToggle:Set(false)
                    jpSlider:Set(50)
                    instantRespawnToggle:Set(false)
                    antiAfkToggle:Set(false)
                    autoCashToggle:Set(false)
                    teleportDropdown:Set(locationNames[1])
                    gunDropdown:Set(gunNames[1])
                    autoGunDropdown:Set(gunNames[1])
                    autoBuyToggle:Set(false)
                    fovSlider:Set(70)
                    crosshairSize:Set(5)
                    crosshairColor:Set(Color3.fromRGB(255, 0, 0))
                    crosshairToggle:Set(true)
                    espEnabled:Set(false)
                    showBoxes:Set(true)
                    showNames:Set(true)
                    showHealth:Set(true)
                    showDistance:Set(true)
                    espColor:Set(Color3.fromRGB(255, 255, 255))
                    flyToggle:Set(false)
                    flyModeDropdown:Set("Normal")
                    flySpeedSlider:Set(50)
                    qeToggle:Set(true)
                    noclipToggle:Set(false)
                    holyKeybind:Set(Enum.KeyCode.End)
                    teleportKeybind:Set(Enum.KeyCode.T)
                    cashKeybind:Set(Enum.KeyCode.G)
                    refillKeybind:Set(Enum.KeyCode.R)
                    buyGunKeybind:Set(Enum.KeyCode.H)
                    flyKeybind:Set(Enum.KeyCode.F)
                    noclipKeybind:Set(Enum.KeyCode.N)
                    espKeybind:Set(Enum.KeyCode.E)
                    vind:Notify({ Title = "Reset Complete", Text = "All settings reset.", Type = "success", Duration = 3 })
                end
            end,
        })
    end,
})

window._janitor:Add(function()
    stopAutoCash()
    stopInstantRespawn()
    stopAntiAfk()
    stopFly()
    setNoclip(false)
    clearESP()
    if espLoop then espLoop:Disconnect() end
    if crosshairDot then crosshairDot:Remove() end
end)

vind:Notify({
    Title = "Loaded",
    Text = "AvHub loaded successfully!",
    Duration = 3,
})

getgenv().Settings = {
    CopyButton = false,
    AutoButton = false,
    AutoInterval = 0.1,
    InstantPurchase = false,
    AutoMassPurchase = false,
    Debug = false,
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/ilivein67-dot/SCR14T-Universal/refs/heads/main/SCR14T%20ESP"))()

getgenv().Settings = {
    CopyButton = false,
    -------------------
    AutoButton = false,
    AutoInterval = 0.1,
    -------------------
    InstantPurchase = false,
    AutoMassPurchase = false,
    Debug = false,
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/FreeGamepass/main/Script.luau"))()