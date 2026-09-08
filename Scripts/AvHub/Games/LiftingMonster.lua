local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
if getgenv().AvHubLoaded then return end
getgenv().AvHubLoaded = true

local correctGameId = "10590654071"
local targetPlaceId = 80180392022466

if tostring(game.GameId) ~= correctGameId then
    WindUI:Notify({
        Title = "WRONG GAME",
        Content = "Cannot teleport to other games unless game has third party teleports enabled.",
        Duration = 5
    })
    task.wait(1)
    setclipboard("https://www.roblox.com/games/" .. targetPlaceId)
    WindUI:Notify({
        Title = "LINK COPIED",
        Content = "Copied game link to clipboard.",
        Duration = 5
    })
    return
end

WindUI:AddTheme({Name="Midnight",Accent=Color3.fromHex("#1a1a2e"),Background=Color3.fromHex("#0f0f1a"),Outline=Color3.fromHex("#2a2a4a"),Text=Color3.fromHex("#e0e0ff"),Placeholder=Color3.fromHex("#6a6a8a"),Button=Color3.fromHex("#3a3a5a"),Icon=Color3.fromHex("#8a8aff")})
WindUI:AddTheme({Name="Ocean",Accent=Color3.fromHex("#0a2a4a"),Background=Color3.fromHex("#051525"),Outline=Color3.fromHex("#1a4a7a"),Text=Color3.fromHex("#b0e0ff"),Placeholder=Color3.fromHex("#4a7a9a"),Button=Color3.fromHex("#1a4a7a"),Icon=Color3.fromHex("#4ac0ff")})
WindUI:AddTheme({Name="Sunset",Accent=Color3.fromHex("#4a1a0a"),Background=Color3.fromHex("#2a0a00"),Outline=Color3.fromHex("#7a3a1a"),Text=Color3.fromHex("#ffd0a0"),Placeholder=Color3.fromHex("#9a6a4a"),Button=Color3.fromHex("#7a3a1a"),Icon=Color3.fromHex("#ff8a40")})
WindUI:AddTheme({Name="Forest",Accent=Color3.fromHex("#1a3a1a"),Background=Color3.fromHex("#0a1a0a"),Outline=Color3.fromHex("#2a5a2a"),Text=Color3.fromHex("#b0ffb0"),Placeholder=Color3.fromHex("#4a7a4a"),Button=Color3.fromHex("#2a5a2a"),Icon=Color3.fromHex("#60ff60")})
WindUI:AddTheme({Name="Dark",Accent=Color3.fromHex("#18181b"),Background=Color3.fromHex("#101010"),Outline=Color3.fromHex("#FFFFFF"),Text=Color3.fromHex("#FFFFFF"),Placeholder=Color3.fromHex("#7a7a7a"),Button=Color3.fromHex("#52525b"),Icon=Color3.fromHex("#a1a1aa")})

local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")
local rs2 = game:GetService("ReplicatedStorage")
local ws = game:GetService("Workspace")

local gf
pcall(function() gf = require(rs2:WaitForChild("globalFunctions",5)) end)
local rev = rs2:FindFirstChild("rEvents")
local musEv = plr:FindFirstChild("muscleEvent")
local machRemote = rev and rev:FindFirstChild("machineInteractRemote")
local rebRemote = rev and rev:FindFirstChild("rebirthRemote")
local questRemote = rev and rev:FindFirstChild("questsEvent")
local cryRemote = rev and rev:FindFirstChild("openCrystalRemote")
local giftRemote = rev and rev:FindFirstChild("freeGiftClaimRemote")
local evoRemote = rev and rev:FindFirstChild("autoEvolveRemote")
local dailyRemote = rev and rev:FindFirstChild("giftRemote")
local spinRemote = rev and rev:FindFirstChild("openFortuneWheelRemote")
local wheelChances = rs2:FindFirstChild("fortuneWheelChances")
local treadInUse = plr:FindFirstChild("treadmillInUse")
local autoLiftVal = plr:FindFirstChild("autoLiftEnabled")
local machFolder = ws:FindFirstChild("machinesFolder")
local cryFolder = ws:FindFirstChild("mapCrystalsFolder")
local treadFolder = ws:FindFirstChild("Treadmills")
local gpList = plr:FindFirstChild("ownedGamepasses")
local stats = plr:FindFirstChild("leaderstats")
local consumables = plr:FindFirstChild("consumablesFolder")
local sizeSpeedRemote = rev and rev:FindFirstChild("changeSpeedSizeRemote")

local char, hum, root, scale
local flyCon, flyLoop, flyUp, noclipLoop, godDied, killLoop, killLastPunch = nil, nil, nil, nil, nil, nil, 0
local speedLabel, jumpLabel
local running = true
local noclipParts = {}
local invisParts = {}

local sett = {
    infJump = false,
    autoRebirth = false,
    autoQuest = false,
    autoLift = false,
    autoMachine = false,
    autoCrystal = false,
    autoPunch = false,
    autoTreadmill = false,
    autoGift = false,
    autoDaily = false,
    autoEvolve = false,
    autoSpin = false,
    autoProteinBar = false,
    autoProteinShake = false,
    autoTropicalShake = false,
    autoToughBar = false,
    autoUltraShake = false,
    autoEnergyBar = false,
    autoEnergyShake = false,
    farmAll = false,
    crystalAmount = 1,
    walkspeed = (hum and hum.WalkSpeed) or 16,
    jumppower = (hum and hum.JumpPower) or 50,
    toggleKey = "Q",
    theme = "Dark",
    autoSprint = false,
    autoJump = false,
    prevSpeed = (hum and hum.WalkSpeed) or 16,
    fly = false,
    flyspeed = 20,
    noclip = false,
    god = false,
    invis = false,
    autoKill = false,
    orbitSpeed = 0.5,
    orbitDistance = 3,
    targetPlayer = "",
    charSize = 1,
    charSpeed = 16,
}

function setupChar(c)
    char = c
    if not char then return end
    hum = c:FindFirstChild("Humanoid")
    root = c:FindFirstChild("HumanoidRootPart")
    if hum then scale = hum:FindFirstChild("BodyHeightScale") end
    if sett.noclip then
        if noclipLoop then noclipLoop:Disconnect() end
        noclipLoop = rs.Stepped:Connect(function() doNoclip() end)
    end
    if sett.invis then
        for _,part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                invisParts[part] = part.Transparency
                part.Transparency = 1
            end
        end
        if hum then
            for _,acc in pairs(hum:GetAccessories()) do
                acc.Handle.Transparency = 1
            end
        end
    end
    if sett.fly and not flyLoop then
        startFly()
    end
end

local function safeCall(obj, method, ...)
    if obj and typeof(obj[method]) == "function" then
        return pcall(obj[method], obj, ...)
    end
end

local statusTxt = "Idle"
local statusLabel

function updStatus(t)
    statusTxt = t
    if statusLabel and type(statusLabel.SetTitle) == "function" then
        statusLabel:SetTitle("Status: " .. t)
    end
end

local win = WindUI:CreateWindow({
    Title = "AvHub - Lifting Monster",
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Folder = "AvHubLiftingMonster",
    Theme = sett.theme,
    Resizable = true,
    SideBarWidth = 180,
})

local configManager = win.ConfigManager
local currentConfig = configManager:Config("Default")

function notify(title, content, duration) WindUI:Notify({Title=title, Content=content, Duration=duration or 3}) end

local homeTab = win:Tab({Title="Home", Icon="gravity:house"})
local playerTab = win:Tab({Title="Player", Icon="gravity:display"})
local farmTab = win:Tab({Title="AutoFarm", Icon="gravity:hammer"})
local killTab = win:Tab({Title="AutoKill", Icon="gravity:flag"})
local miscTab = win:Tab({Title="Misc", Icon="gravity:puzzle"})
local setTab = win:Tab({Title="Settings", Icon="gravity:sliders"})

homeTab:Paragraph({Title="Name", Desc=plr.Name})
local strLabel = homeTab:Paragraph({Title="Strength", Desc=stats and stats:FindFirstChild("Strength") and tostring(stats.Strength.Value) or "?"})
local agiLabel = homeTab:Paragraph({Title="Agility", Desc=plr:FindFirstChild("Agility") and tostring(plr.Agility.Value) or "?"})
local durLabel = homeTab:Paragraph({Title="Durability", Desc=plr:FindFirstChild("Durability") and tostring(plr.Durability.Value) or "?"})
local gemLabel = homeTab:Paragraph({Title="Gems", Desc=plr:FindFirstChild("Gems") and tostring(plr.Gems.Value) or "?"})
local rebLabel = homeTab:Paragraph({Title="Rebirths", Desc=stats and stats:FindFirstChild("Rebirths") and tostring(stats.Rebirths.Value) or "?"})
local gpLabel = homeTab:Paragraph({Title="2x Rep Time", Desc=gpList and gpList:FindFirstChild("x2 Rep Time") and "Active" or "Inactive"})
statusLabel = homeTab:Paragraph({Title="Status", Desc="Idle"})

playerTab:Section({Title="Movement", Opened=true})
playerTab:Slider({Title="Walkspeed", Value={Min=16,Max=100,Default=sett.walkspeed}, Flag="walkspeed", Callback=function(v) sett.walkspeed=v; if hum then hum.WalkSpeed=v end end})
playerTab:Slider({Title="Jump Power", Value={Min=50,Max=500,Default=sett.jumppower}, Flag="jumppower", Callback=function(v) sett.jumppower=v; if hum then hum.JumpPower=v end end})
local infJumpTog = playerTab:Toggle({Title="Infinite Jump", Value=sett.infJump, Flag="infJump", Callback=function(v) sett.infJump=v end})
local sprintTog = playerTab:Toggle({Title="Auto Sprint", Desc="Sets walkspeed to 50", Value=sett.autoSprint, Flag="autoSprint", Callback=function(v)
    sett.autoSprint=v
    if v then
        sett.prevSpeed = hum and hum.WalkSpeed or 16
        if hum then hum.WalkSpeed = 50 end
    else
        if hum then hum.WalkSpeed = sett.prevSpeed end
    end
end})
local jumpTog = playerTab:Toggle({Title="Auto Jump", Desc="Jumps every 2 seconds", Value=sett.autoJump, Flag="autoJump", Callback=function(v) sett.autoJump=v end})

playerTab:Section({Title="Character Modifiers", Opened=true})
playerTab:Slider({Title="Set Size", Desc="Changes character size (1-100)", Value={Min=1,Max=100,Default=sett.charSize}, Flag="charSize", Callback=function(v)
    sett.charSize = v
    if sizeSpeedRemote then
        pcall(sizeSpeedRemote.InvokeServer, sizeSpeedRemote, "changeSize", v)
    end
end})
playerTab:Slider({Title="Set Speed", Desc="Changes character speed stat (16-500)", Value={Min=16,Max=500,Default=sett.charSpeed}, Flag="charSpeed", Callback=function(v)
    sett.charSpeed = v
    if sizeSpeedRemote then
        pcall(sizeSpeedRemote.InvokeServer, sizeSpeedRemote, "changeSpeed", v)
    end
end})

playerTab:Section({Title="Flight", Opened=true})
local flyTog = playerTab:Toggle({Title="Fly", Value=sett.fly, Flag="fly", Callback=function(v)
    sett.fly=v
    if v then startFly() else stopFly() end
end})
playerTab:Slider({Title="Fly Speed", Value={Min=5,Max=100,Default=sett.flyspeed}, Flag="flyspeed", Callback=function(v) sett.flyspeed=v end})

playerTab:Section({Title="Utility", Opened=true})
local noclipTog = playerTab:Toggle({Title="Noclip", Value=sett.noclip, Flag="noclip", Callback=function(v)
    sett.noclip=v
    if v then
        if noclipLoop then noclipLoop:Disconnect() end
        noclipLoop = rs.Stepped:Connect(function() doNoclip() end)
    else
        if noclipLoop then noclipLoop:Disconnect(); noclipLoop=nil end
        resetNoclip()
    end
end})
local godTog = playerTab:Toggle({Title="God Mode", Value=sett.god, Flag="god", Callback=function(v)
    sett.god=v
    if v then enableGod() else disableGod() end
end})
local invisTog = playerTab:Toggle({Title="Invisible", Value=sett.invis, Flag="invis", Callback=function(v)
    sett.invis=v
    if v then enableInvis() else disableInvis() end
end})

farmTab:Section({Title="Lifting", Opened=true})
local liftTog = farmTab:Toggle({Title="Auto Lift (Weight)", Value=sett.autoLift, Flag="autoLift", Callback=function(v)
    sett.autoLift=v
    if v then
        local tool = plr.Backpack:FindFirstChild("Weight") or (char and char:FindFirstChild("Weight"))
        if not tool then notify("Error", "Weight tool not found!",3); sett.autoLift=false; liftTog:SetValue(false); return end
        tool.Parent = char
        if autoLiftVal then autoLiftVal.Value=true; updStatus("Lifting"..(gpList and gpList:FindFirstChild("x2 Rep Time") and " (2x)" or "")); notify("Auto Lift","Started") else notify("Error","autoLiftEnabled not found!",3); sett.autoLift=false; liftTog:SetValue(false) end
    else
        if autoLiftVal then autoLiftVal.Value=false end
        updStatus("Idle"); notify("Auto Lift","Stopped")
    end
end})

farmTab:Section({Title="Machines", Opened=true})
local machTog = farmTab:Toggle({Title="Auto Machine", Value=sett.autoMachine, Flag="autoMachine", Callback=function(v) sett.autoMachine=v; if v then updStatus("Machine"); notify("Auto Machine","Started") else updStatus("Idle"); notify("Auto Machine","Stopped") end end})

farmTab:Section({Title="Crystals", Opened=true})
local cry1Tog = farmTab:Toggle({Title="Auto Crystal (1x)", Value=sett.autoCrystal and sett.crystalAmount==1, Flag="autoCrystal1", Callback=function(v) if v then sett.autoCrystal=true; sett.crystalAmount=1; cry3Tog:SetValue(false); updStatus("Crystal (1x)"); notify("Auto Crystal","Started (1x)") else sett.autoCrystal=false; updStatus("Idle"); notify("Auto Crystal","Stopped") end end})
local cry3Tog = farmTab:Toggle({Title="Auto Crystal (3x)", Value=sett.autoCrystal and sett.crystalAmount==3, Flag="autoCrystal3", Callback=function(v) if v then sett.autoCrystal=true; sett.crystalAmount=3; cry1Tog:SetValue(false); updStatus("Crystal (3x)"); notify("Auto Crystal","Started (3x)") else sett.autoCrystal=false; updStatus("Idle"); notify("Auto Crystal","Stopped") end end})

farmTab:Section({Title="Combat", Opened=true})
local punchTog = farmTab:Toggle({Title="Auto Punch", Value=sett.autoPunch, Flag="autoPunch", Callback=function(v)
    sett.autoPunch=v
    if v then
        local tool = plr.Backpack:FindFirstChild("Punch") or (char and char:FindFirstChild("Punch"))
        if not tool then notify("Error","Punch tool not found!",3); sett.autoPunch=false; punchTog:SetValue(false); return end
        tool.Parent = char
        updStatus("Punching"); notify("Auto Punch","Started")
    else
        updStatus("Idle"); notify("Auto Punch","Stopped")
    end
end})

farmTab:Section({Title="Treadmill", Opened=false})
local treadTog = farmTab:Toggle({Title="Auto Treadmill", Value=sett.autoTreadmill, Flag="autoTreadmill", Callback=function(v) sett.autoTreadmill=v; if v then updStatus("Treadmill"); notify("Auto Treadmill","Started (experimental)") else updStatus("Idle"); notify("Auto Treadmill","Stopped") end end})

farmTab:Section({Title="Fortune Wheel", Opened=true})
local spinTog = farmTab:Toggle({Title="Auto Spin", Value=sett.autoSpin, Flag="autoSpin", Callback=function(v) sett.autoSpin=v; if v then updStatus("Spinning"); notify("Auto Spin","Started") else updStatus("Idle"); notify("Auto Spin","Stopped") end end})

farmTab:Section({Title="Consumables", Opened=false})
local protTog = farmTab:Toggle({Title="Auto Protein Bars", Value=sett.autoProteinBar, Flag="autoProteinBar", Callback=function(v) sett.autoProteinBar=v end})
local proshTog = farmTab:Toggle({Title="Auto Protein Shakes", Value=sett.autoProteinShake, Flag="autoProteinShake", Callback=function(v) sett.autoProteinShake=v end})
local tropTog = farmTab:Toggle({Title="Auto Tropical Shakes", Value=sett.autoTropicalShake, Flag="autoTropicalShake", Callback=function(v) sett.autoTropicalShake=v end})
local toughTog = farmTab:Toggle({Title="Auto TOUGH Bars", Value=sett.autoToughBar, Flag="autoToughBar", Callback=function(v) sett.autoToughBar=v end})
local ultraTog = farmTab:Toggle({Title="Auto ULTRA Shakes", Value=sett.autoUltraShake, Flag="autoUltraShake", Callback=function(v) sett.autoUltraShake=v end})
local enbarTog = farmTab:Toggle({Title="Auto Energy Bars", Value=sett.autoEnergyBar, Flag="autoEnergyBar", Callback=function(v) sett.autoEnergyBar=v end})
local enshTog = farmTab:Toggle({Title="Auto Energy Shakes", Value=sett.autoEnergyShake, Flag="autoEnergyShake", Callback=function(v) sett.autoEnergyShake=v end})

farmTab:Section({Title="Miscellaneous", Opened=true})
local giftTog = farmTab:Toggle({Title="Auto Claim Free Gifts", Value=sett.autoGift, Flag="autoGift", Callback=function(v) sett.autoGift=v; if v then updStatus("Gifts"); notify("Auto Gifts","Started") else updStatus("Idle"); notify("Auto Gifts","Stopped") end end})
local dailyTog = farmTab:Toggle({Title="Auto Claim Daily Rewards", Value=sett.autoDaily, Flag="autoDaily", Callback=function(v) sett.autoDaily=v; if v then updStatus("Daily"); notify("Auto Daily","Started") else updStatus("Idle"); notify("Auto Daily","Stopped") end end})

killTab:Section({Title="Target Selection", Opened=true})
local targetLabel = killTab:Paragraph({Title="Current Target", Desc=sett.targetPlayer or "None"})
local targetDropdown = killTab:Dropdown({
    Title="Select Player",
    Values={"No other players"},
    Value=sett.targetPlayer or "No other players",
    Flag="targetPlayer",
    Callback=function(v)
        sett.targetPlayer = v
        targetLabel:SetTitle("Current Target: " .. v)
    end
})

local function updateDropdownOptions(dropdown, options)
    if not dropdown then return end
    if typeof(dropdown.SetOptions) == "function" then
        dropdown:SetOptions(options)
    elseif typeof(dropdown.SetValues) == "function" then
        dropdown:SetValues(options)
    elseif typeof(dropdown.Refresh) == "function" then
        dropdown:Refresh(options)
    else
        warn("No dropdown update method found")
    end
end

local function refreshPlayers()
    local names = {}
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= plr then table.insert(names, p.Name) end
    end
    if #names == 0 then table.insert(names, "No other players") end
    updateDropdownOptions(targetDropdown, names)
    if #names > 0 and names[1] ~= "No other players" then
        if sett.targetPlayer == "" or sett.targetPlayer == "No other players" or not table.find(names, sett.targetPlayer) then
            sett.targetPlayer = names[1]
            targetLabel:SetTitle("Current Target: " .. names[1])
            if typeof(targetDropdown.SetValue) == "function" then targetDropdown:SetValue(names[1]) end
        else
            if typeof(targetDropdown.SetValue) == "function" then targetDropdown:SetValue(sett.targetPlayer) end
        end
    else
        sett.targetPlayer = "No other players"
        targetLabel:SetTitle("Current Target: None")
        if typeof(targetDropdown.SetValue) == "function" then targetDropdown:SetValue("No other players") end
    end
end
refreshPlayers()
killTab:Button({Title="Refresh Players", Icon="gravity:refresh-ccw", Callback=function() refreshPlayers() end})

killTab:Section({Title="Auto Kill", Opened=true})
local killTog = killTab:Toggle({Title="Auto Kill", Value=sett.autoKill, Flag="autoKill", Callback=function(v)
    sett.autoKill=v
    if v then
        if sett.targetPlayer == "" or sett.targetPlayer == "No other players" then
            notify("Auto Kill","Please select a target first")
            sett.autoKill=false; killTog:SetValue(false)
            return
        end
        updStatus("Killing " .. sett.targetPlayer)
        notify("Auto Kill","Started on " .. sett.targetPlayer)
        if killLoop then killLoop:Disconnect() end
        local angle = 0
        killLoop = rs.Stepped:Connect(function()
            if not char or not root or not hum or hum.Health <= 0 then return end
            local target = nil
            for _,p in pairs(game.Players:GetPlayers()) do
                if p.Name == sett.targetPlayer and p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
                    target = p.Character:FindFirstChild("HumanoidRootPart")
                    break
                end
            end
            if target then
                angle = angle + sett.orbitSpeed * 0.1
                local orbitCF = CFrame.new(target.Position) * CFrame.Angles(0, angle, 0) * CFrame.new(sett.orbitDistance, 0, 0)
                root.CFrame = CFrame.new(orbitCF.Position, target.Position)
                root.Velocity = Vector3.new()
                if musEv then
                    local tool = char:FindFirstChild("Punch")
                    if not tool then
                        tool = plr.Backpack:FindFirstChild("Punch")
                        if tool then tool.Parent = char end
                    end
                    if tool then
                        local atk = tool:FindFirstChild("attackTime")
                        local cd = atk and atk.Value or 0.2
                        if tick() - killLastPunch >= cd then
                            killLastPunch = tick()
                            musEv:FireServer("punch", "rightHand")
                        end
                    end
                end
                updStatus("Killing " .. sett.targetPlayer)
            else
                updStatus("Kill: Target missing or dead")
            end
        end)
    else
        if killLoop then killLoop:Disconnect(); killLoop=nil end
        updStatus("Idle")
        notify("Auto Kill","Stopped")
    end
end})
killTab:Slider({Title="Orbit Speed", Value={Min=0.1,Max=5,Default=sett.orbitSpeed}, Flag="orbitSpeed", Callback=function(v) sett.orbitSpeed=v end})
killTab:Slider({Title="Orbit Distance", Value={Min=1,Max=10,Default=sett.orbitDistance}, Flag="orbitDistance", Callback=function(v) sett.orbitDistance=v end})

miscTab:Section({Title="Automation", Opened=true})
local rebTog = miscTab:Toggle({Title="Auto Rebirth", Value=sett.autoRebirth, Flag="autoRebirth", Callback=function(v) sett.autoRebirth=v; if v then updStatus("Rebirth"); notify("Auto Rebirth","Started") else updStatus("Idle"); notify("Auto Rebirth","Stopped") end end})
local questTog = miscTab:Toggle({Title="Auto Claim Quests", Value=sett.autoQuest, Flag="autoQuest", Callback=function(v) sett.autoQuest=v; if v then updStatus("Quests"); notify("Auto Quests","Started") else updStatus("Idle"); notify("Auto Quests","Stopped") end end})
local evoTog = miscTab:Toggle({Title="Auto Evolve Pets", Value=sett.autoEvolve, Flag="autoEvolve", Callback=function(v) sett.autoEvolve=v; if v then updStatus("Evolving"); notify("Auto Evolve","Started") else updStatus("Idle"); notify("Auto Evolve","Stopped") end end})

miscTab:Section({Title="Farm All", Opened=true})
local farmAllTog = miscTab:Toggle({Title="Farm All", Value=sett.farmAll, Flag="farmAll", Callback=function(v)
    sett.farmAll=v
    if v then
        sett.autoLift=true; sett.autoMachine=true; sett.autoCrystal=true; sett.autoPunch=true; sett.autoTreadmill=true; sett.autoSpin=true; sett.autoGift=true; sett.autoDaily=true; sett.autoRebirth=true; sett.autoQuest=true; sett.autoEvolve=true; sett.autoProteinBar=true; sett.autoProteinShake=true; sett.autoTropicalShake=true; sett.autoToughBar=true; sett.autoUltraShake=true; sett.autoEnergyBar=true; sett.autoEnergyShake=true
        local function setSilent(tog,val) if tog and typeof(tog.SetValue)=="function" then pcall(tog.SetValue,tog,val) end end
        setSilent(liftTog,true); setSilent(machTog,true); setSilent(cry1Tog,true); setSilent(cry3Tog,false); setSilent(punchTog,true); setSilent(treadTog,true); setSilent(spinTog,true); setSilent(giftTog,true); setSilent(dailyTog,true); setSilent(rebTog,true); setSilent(questTog,true); setSilent(evoTog,true); setSilent(protTog,true); setSilent(proshTog,true); setSilent(tropTog,true); setSilent(toughTog,true); setSilent(ultraTog,true); setSilent(enbarTog,true); setSilent(enshTog,true)
        sett.crystalAmount=1; notify("Farm All","All features enabled!"); updStatus("Farming All")
    else
        sett.autoLift=false; sett.autoMachine=false; sett.autoCrystal=false; sett.autoPunch=false; sett.autoTreadmill=false; sett.autoSpin=false; sett.autoGift=false; sett.autoDaily=false; sett.autoRebirth=false; sett.autoQuest=false; sett.autoEvolve=false; sett.autoProteinBar=false; sett.autoProteinShake=false; sett.autoTropicalShake=false; sett.autoToughBar=false; sett.autoUltraShake=false; sett.autoEnergyBar=false; sett.autoEnergyShake=false
        local function setSilent(tog,val) if tog and typeof(tog.SetValue)=="function" then pcall(tog.SetValue,tog,val) end end
        setSilent(liftTog,false); setSilent(machTog,false); setSilent(cry1Tog,false); setSilent(cry3Tog,false); setSilent(punchTog,false); setSilent(treadTog,false); setSilent(spinTog,false); setSilent(giftTog,false); setSilent(dailyTog,false); setSilent(rebTog,false); setSilent(questTog,false); setSilent(evoTog,false); setSilent(protTog,false); setSilent(proshTog,false); setSilent(tropTog,false); setSilent(toughTog,false); setSilent(ultraTog,false); setSilent(enbarTog,false); setSilent(enshTog,false)
        notify("Farm All","All features disabled!"); updStatus("Idle")
    end
end})

miscTab:Button({Title="Stop All", Icon="gravity:stop-circle", Callback=function()
    sett.autoLift=false; sett.autoMachine=false; sett.autoCrystal=false; sett.autoPunch=false; sett.autoTreadmill=false; sett.autoSpin=false; sett.autoGift=false; sett.autoDaily=false; sett.autoRebirth=false; sett.autoQuest=false; sett.autoEvolve=false; sett.autoProteinBar=false; sett.autoProteinShake=false; sett.autoTropicalShake=false; sett.autoToughBar=false; sett.autoUltraShake=false; sett.autoEnergyBar=false; sett.autoEnergyShake=false; sett.farmAll=false
    local function setSilent(tog,val) if tog and typeof(tog.SetValue)=="function" then pcall(tog.SetValue,tog,val) end end
    setSilent(liftTog,false); setSilent(machTog,false); setSilent(cry1Tog,false); setSilent(cry3Tog,false); setSilent(punchTog,false); setSilent(treadTog,false); setSilent(spinTog,false); setSilent(giftTog,false); setSilent(dailyTog,false); setSilent(rebTog,false); setSilent(questTog,false); setSilent(evoTog,false); setSilent(protTog,false); setSilent(proshTog,false); setSilent(tropTog,false); setSilent(toughTog,false); setSilent(ultraTog,false); setSilent(enbarTog,false); setSilent(enshTog,false); setSilent(farmAllTog,false)
    saveCfg(); updStatus("Idle"); notify("Stop All","All features disabled.")
end})

miscTab:Button({Title="Unload AvHub", Icon="gravity:power", Callback=function()
    running = false
    if flyLoop then flyLoop:Disconnect() end
    if flyCon then flyCon:Disconnect() end
    if flyUp then flyUp:Disconnect() end
    if noclipLoop then noclipLoop:Disconnect() end
    if godDied then godDied:Disconnect() end
    if killLoop then killLoop:Disconnect() end
    resetNoclip()
    disableInvis()
    stopFly()
    if win and typeof(win.Close)=="function" then win:Close() end
    getgenv().AvHubLoaded = nil
end})

setTab:Section({Title="UI Controls", Opened=true})
local keyTog = setTab:Keybind({Title="Toggle UI Key", Value=sett.toggleKey, Flag="toggleKey", Callback=function(k)
    sett.toggleKey = k
    notify("Keybind","UI toggle set to "..k)
end})
setTab:Dropdown({Title="Theme", Values={"Dark","Light","Glass","Midnight","Ocean","Sunset","Forest"}, Value=sett.theme, Flag="theme", Callback=function(t) sett.theme=t; WindUI:SetTheme(t) end})
setTab:Button({Title="Reset All Settings", Icon="gravity:rotate-ccw", Callback=function()
    local def = {infJump=false, autoRebirth=false, autoQuest=false, autoLift=false, autoMachine=false, autoCrystal=false, autoPunch=false, autoTreadmill=false, autoSpin=false, autoGift=false, autoDaily=false, autoEvolve=false, autoProteinBar=false, autoProteinShake=false, autoTropicalShake=false, autoToughBar=false, autoUltraShake=false, autoEnergyBar=false, autoEnergyShake=false, farmAll=false, crystalAmount=1, walkspeed=16, jumppower=50, toggleKey="Q", theme="Dark", autoSprint=false, autoJump=false, prevSpeed=16, fly=false, flyspeed=20, noclip=false, god=false, invis=false, autoKill=false, orbitSpeed=0.5, orbitDistance=3, targetPlayer="", charSize=1, charSpeed=16}
    for k,v in pairs(def) do sett[k]=v end
    local function setSilent(tog,val) if tog and typeof(tog.SetValue)=="function" then pcall(tog.SetValue,tog,val) end end
    setSilent(liftTog,false); setSilent(machTog,false); setSilent(cry1Tog,false); setSilent(cry3Tog,false); setSilent(punchTog,false); setSilent(treadTog,false); setSilent(spinTog,false); setSilent(giftTog,false); setSilent(dailyTog,false); setSilent(rebTog,false); setSilent(questTog,false); setSilent(evoTog,false); setSilent(protTog,false); setSilent(proshTog,false); setSilent(tropTog,false); setSilent(toughTog,false); setSilent(ultraTog,false); setSilent(enbarTog,false); setSilent(enshTog,false); setSilent(farmAllTog,false); setSilent(infJumpTog,false); setSilent(sprintTog,false); setSilent(jumpTog,false); setSilent(flyTog,false); setSilent(noclipTog,false); setSilent(godTog,false); setSilent(invisTog,false); setSilent(killTog,false)
    keyTog:SetValue("Q"); setTab:Dropdown({Title="Theme", Values={"Dark","Light","Glass","Midnight","Ocean","Sunset","Forest"}, Value="Dark", Flag="theme", Callback=function(t) sett.theme=t; WindUI:SetTheme(t) end})
    WindUI:SetTheme("Dark"); notify("Reset","All settings restored to default.")
end})

setTab:Section({Title="Server", Opened=true})
setTab:Button({Title="Rejoin Server", Desc="Rejoin the current server", Icon="gravity:refresh-ccw", Callback=function()
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local plr = Players.LocalPlayer
    if #Players:GetPlayers() <= 1 then
        plr:Kick("Rejoining...")
        task.wait(0.3)
        TeleportService:Teleport(game.PlaceId, plr)
    else
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
    end
end})
setTab:Button({Title="ServerHop", Desc="Join a random public server", Icon="gravity:globe", Callback=function()
    local TeleportService = game:GetService("TeleportService")
    local HttpService = game:GetService("HttpService")
    local PlaceId = game.PlaceId
    local JobId = game.JobId
    local servers = {}
    local success, result = pcall(function()
        local req = game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")
        return HttpService:JSONDecode(req)
    end)
    if success and result and result.data then
        for _, v in pairs(result.data) do
            if v.playing < v.maxPlayers and v.id ~= JobId then
                table.insert(servers, v.id)
            end
        end
    end
    if #servers > 0 then
        TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    else
        notify("ServerHop", "No servers found")
    end
end})

setTab:Section({Title="Configs", Opened=true})
local configNameInput = setTab:Input({Title="Config Name", Desc="Name of the config to save/load", Flag="configName", Placeholder="Default", Value="Default"})
setTab:Button({Title="Save Config", Desc="Save current settings to the named config", Icon="gravity:save", Callback=function()
    local name = configNameInput:GetValue()
    if name == "" then name = "Default" end
    currentConfig = configManager:Config(name)
    currentConfig:Save()
    notify("Config", "Saved config: " .. name)
end})
setTab:Button({Title="Load Config", Desc="Load settings from the named config", Icon="gravity:download", Callback=function()
    local name = configNameInput:GetValue()
    if name == "" then name = "Default" end
    currentConfig = configManager:Config(name)
    currentConfig:Load()
    notify("Config", "Loaded config: " .. name)
end})
setTab:Button({Title="Delete Config", Desc="Delete the named config", Icon="gravity:trash", Callback=function()
    local name = configNameInput:GetValue()
    if name == "" then name = "Default" end
    local cfg = configManager:Config(name)
    if cfg and cfg:Exists() then
        cfg:Delete()
        notify("Config", "Deleted config: " .. name)
    else
        notify("Config", "Config does not exist: " .. name)
    end
end})

currentConfig:Load()

function startFly()
    if not char or not hum then return end
    if flyLoop then return end
    hum.PlatformStand = true
    local bg = Instance.new("BodyGyro")
    bg.Name = "AvHubFlyGyro"
    bg.P = 9e4
    bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
    bg.CFrame = workspace.CurrentCamera.CFrame
    bg.Parent = root
    local bv = Instance.new("BodyVelocity")
    bv.Name = "AvHubFlyVelocity"
    bv.MaxForce = Vector3.new(9e9,9e9,9e9)
    bv.Velocity = Vector3.new()
    bv.Parent = root
    local ctrl = {F=0,B=0,L=0,R=0,Q=0,E=0}
    flyCon = uis.InputBegan:Connect(function(input,processed)
        if processed then return end
        if input.KeyCode == Enum.KeyCode.W then ctrl.F = sett.flyspeed
        elseif input.KeyCode == Enum.KeyCode.S then ctrl.B = -sett.flyspeed
        elseif input.KeyCode == Enum.KeyCode.A then ctrl.L = -sett.flyspeed
        elseif input.KeyCode == Enum.KeyCode.D then ctrl.R = sett.flyspeed
        elseif input.KeyCode == Enum.KeyCode.Q then ctrl.Q = -sett.flyspeed*2
        elseif input.KeyCode == Enum.KeyCode.E then ctrl.E = sett.flyspeed*2 end
    end)
    flyUp = uis.InputEnded:Connect(function(input,processed)
        if processed then return end
        if input.KeyCode == Enum.KeyCode.W then ctrl.F=0
        elseif input.KeyCode == Enum.KeyCode.S then ctrl.B=0
        elseif input.KeyCode == Enum.KeyCode.A then ctrl.L=0
        elseif input.KeyCode == Enum.KeyCode.D then ctrl.R=0
        elseif input.KeyCode == Enum.KeyCode.Q then ctrl.Q=0
        elseif input.KeyCode == Enum.KeyCode.E then ctrl.E=0 end
    end)
    flyLoop = rs.RenderStepped:Connect(function()
        if not char or not root or not char.Parent then stopFly(); return end
        local cam = workspace.CurrentCamera
        if not cam then return end
        bg.CFrame = cam.CFrame
        local move = (cam.CFrame.LookVector * (ctrl.F + ctrl.B)) + ((cam.CFrame * CFrame.new(ctrl.L + ctrl.R, (ctrl.F+ctrl.B+ctrl.Q+ctrl.E)*0.2,0).p) - cam.CFrame.p)
        bv.Velocity = move * sett.flyspeed
        if ctrl.F+ctrl.B+ctrl.L+ctrl.R+ctrl.Q+ctrl.E == 0 then bv.Velocity = Vector3.new() end
    end)
end
function stopFly()
    if flyLoop then flyLoop:Disconnect(); flyLoop=nil end
    if flyCon then flyCon:Disconnect(); flyCon=nil end
    if flyUp then flyUp:Disconnect(); flyUp=nil end
    if hum then hum.PlatformStand = false end
    if char then
        for _,v in pairs(char:GetDescendants()) do
            if v.Name == "AvHubFlyGyro" or v.Name == "AvHubFlyVelocity" then v:Destroy() end
        end
    end
end

function doNoclip()
    if char then
        for _,part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                if noclipParts[part] == nil then noclipParts[part] = part.CanCollide end
                part.CanCollide = false
            end
        end
    end
end
function resetNoclip()
    for part, orig in pairs(noclipParts) do
        if part and part.Parent then
            part.CanCollide = orig
        end
    end
    noclipParts = {}
end

function enableInvis()
    if not char then return end
    for _,part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            if invisParts[part] == nil then invisParts[part] = part.Transparency end
            part.Transparency = 1
        end
    end
    if hum then
        for _,acc in pairs(hum:GetAccessories()) do
            acc.Handle.Transparency = 1
        end
    end
end
function disableInvis()
    for part, orig in pairs(invisParts) do
        if part and part.Parent then
            part.Transparency = orig
        end
    end
    invisParts = {}
end

local godHealthConn
function enableGod()
    if not char or not hum then return end
    if godDied then godDied:Disconnect() end
    godDied = hum.Died:Connect(function()
        if sett.god then
            task.wait()
            if not char or not hum then return end
            hum.Health = hum.MaxHealth
            plr.Character = char
            workspace.CurrentCamera.CameraSubject = hum
        end
    end)
    if godHealthConn then godHealthConn:Disconnect() end
    godHealthConn = hum.HealthChanged:Connect(function(h)
        if sett.god and h <= 0 then
            hum.Health = hum.MaxHealth
        end
    end)
end
function disableGod()
    if godDied then godDied:Disconnect(); godDied=nil end
    if godHealthConn then godHealthConn:Disconnect(); godHealthConn=nil end
end

local lastPunchTime = 0
local lastSpinTime = 0
local lastRep = 0
local lastConsume = 0
local lastJumpTime = 0

task.spawn(function()
    while running and task.wait(0.5) do
        if not char or not hum or hum.Health <= 0 then
            updStatus("Dead/Waiting")
            task.wait(1)
            continue
        end

        if sett.autoMachine then
            if hum.SeatPart == nil then
                local seat = getClosestMachine()
                if seat then
                    if machRemote then
                        local ok = pcall(machRemote.InvokeServer, machRemote, "useMachine", seat)
                        if ok then updStatus("Machine: Using") else updStatus("Machine: Failed") end
                    else updStatus("Machine: Remote missing") end
                else updStatus("Machine: None nearby") end
            else
                updStatus("Machine: Using")
                local repTime = hum.SeatPart.Parent:FindFirstChild("repTime")
                if repTime then
                    local cd = repTime.Value
                    if gpList and gpList:FindFirstChild("x2 Rep Time") then cd = cd / 2 end
                    if gf then
                        local ult = gf.calculateUltimateRepTime and gf.calculateUltimateRepTime(plr) or 0
                        local pet = gf.calculatePetRepTimeBoost and gf.calculatePetRepTimeBoost(plr) or 0
                        cd = cd - cd*ult - cd*pet
                    end
                    if cd < 0.1 then cd = 0.1 end
                    if tick() - lastRep >= cd then
                        lastRep = tick()
                        if musEv then musEv:FireServer("rep", hum.SeatPart) end
                    end
                end
            end
        end

        if sett.autoCrystal then
            local cry = getClosestCrystal()
            if cry then
                local d = (root.Position - cry.PrimaryPart.Position).magnitude
                if d <= 30 then
                    updStatus("Crystal: Opening " .. cry.Name)
                    if cryRemote then pcall(cryRemote.InvokeServer, cryRemote, "openCrystal", cry.Name, sett.crystalAmount or 1) else updStatus("Crystal: Remote missing") end
                else updStatus("Crystal: Too far") end
            else updStatus("Crystal: None found") end
        end

        if sett.autoPunch then
            local tool = char:FindFirstChild("Punch")
            if not tool then
                tool = plr.Backpack:FindFirstChild("Punch")
                if tool then tool.Parent = char else updStatus("Punch: Tool missing"); continue end
            end
            local atk = tool:FindFirstChild("attackTime")
            local cd = atk and atk.Value or 0.5
            if tick() - lastPunchTime >= cd then
                lastPunchTime = tick()
                if musEv then musEv:FireServer("punch", "rightHand") end
            end
        end

        if sett.autoTreadmill then
            if treadInUse and treadInUse.Value == nil then
                local part = getClosestTreadmill()
                if part then updStatus("Treadmill: Found (interaction not implemented)") else updStatus("Treadmill: None nearby") end
            else updStatus("Treadmill: In use") end
        end

        if tick() - lastConsume > 2 then
            if consumables then
                local used = false
                local types = {{name="Protein Bar", setting="autoProteinBar"},{name="Protein Shake", setting="autoProteinShake"},{name="Tropical Shake", setting="autoTropicalShake"},{name="TOUGH Bar", setting="autoToughBar"},{name="ULTRA Shake", setting="autoUltraShake"},{name="Energy Bar", setting="autoEnergyBar"},{name="Energy Shake", setting="autoEnergyShake"}}
                for _, t in ipairs(types) do
                    if sett[t.setting] then
                        local item = consumables:FindFirstChild(t.name)
                        if item then useConsumable(t.name); used = true; updStatus("Consumed: " .. t.name); break end
                    end
                end
                if used then lastConsume = tick() end
            end
        end

        if sett.autoJump and tick() - lastJumpTime > 2 then
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping); lastJumpTime = tick() end
        end

        if sett.autoSpin and spinRemote and wheelChances and tick() - lastSpinTime >= 1 then
            local wheel = wheelChances:FindFirstChild("Fortune Wheel")
            if wheel then
                pcall(spinRemote.InvokeServer, spinRemote, "openFortuneWheel", wheel)
                lastSpinTime = tick()
                updStatus("Spinning")
            end
        end
    end
end)

task.spawn(function()
    while running and task.wait(5) do
        if not sett.autoRebirth then continue end
        if not gf then updStatus("Rebirth: Functions missing") continue end
        local ls = stats
        if not ls then updStatus("Rebirth: No leaderstats") continue end
        local str = ls:FindFirstChild("Strength")
        local reb = ls:FindFirstChild("Rebirths")
        if not str or not reb then updStatus("Rebirth: Stats missing") continue end
        local required = gf.calculateRequiredRebirthStrength and gf.calculateRequiredRebirthStrength(reb.Value, plr)
        if not required then updStatus("Rebirth: Cannot calc") continue end
        if str.Value >= required then
            if rebRemote then
                local ok = pcall(rebRemote.InvokeServer, rebRemote)
                updStatus(ok and "Rebirth: Success" or "Rebirth: Failed")
                if ok then notify("Rebirth", "Success!") end
            else updStatus("Rebirth: Remote missing") end
        end
    end
end)

task.spawn(function()
    while running and task.wait(10) do
        if sett.autoQuest and questRemote then pcall(questRemote.FireServer, questRemote, "collectQuest") end
    end
end)

task.spawn(function()
    while running and task.wait(5) do
        if sett.autoGift and giftRemote then
            local ok = pcall(giftRemote.InvokeServer, giftRemote, "claimGift")
            if ok then updStatus("Gift: Claimed") end
        end
    end
end)

task.spawn(function()
    while running and task.wait(10) do
        if sett.autoDaily and dailyRemote then
            local ok = pcall(dailyRemote.InvokeServer, dailyRemote, "claimDaily")
            if ok then updStatus("Daily: Claimed") end
        end
    end
end)

task.spawn(function()
    while running and task.wait(10) do
        if sett.autoEvolve and evoRemote then
            local ok = pcall(evoRemote.InvokeServer, evoRemote)
            if ok then updStatus("Evolve: Done") end
        end
    end
end)

local function updateUI()
    if not char then return end
    local h = char:FindFirstChild("Humanoid")
    if h then
        if speedLabel and type(speedLabel.SetTitle)=="function" then
            speedLabel:SetTitle("Speed: " .. math.floor(h.WalkSpeed))
        end
        if jumpLabel and type(jumpLabel.SetTitle)=="function" then
            jumpLabel:SetTitle("Jump Power: " .. math.floor(h.JumpPower))
        end
    end
    if gpLabel and type(gpLabel.SetTitle)=="function" then
        local gp = gpList
        if gp and gp:FindFirstChild("x2 Rep Time") then gpLabel:SetTitle("2x Rep Time: Active") else gpLabel:SetTitle("2x Rep Time: Inactive") end
    end
    if stats then
        local s = stats:FindFirstChild("Strength")
        if s and strLabel and type(strLabel.SetTitle)=="function" then strLabel:SetTitle("Strength: " .. s.Value) end
        local r = stats:FindFirstChild("Rebirths")
        if r and rebLabel and type(rebLabel.SetTitle)=="function" then rebLabel:SetTitle("Rebirths: " .. r.Value) end
    end
    local ag = plr:FindFirstChild("Agility")
    if ag and agiLabel and type(agiLabel.SetTitle)=="function" then agiLabel:SetTitle("Agility: " .. ag.Value) end
    local du = plr:FindFirstChild("Durability")
    if du and durLabel and type(durLabel.SetTitle)=="function" then durLabel:SetTitle("Durability: " .. du.Value) end
    local gm = plr:FindFirstChild("Gems")
    if gm and gemLabel and type(gemLabel.SetTitle)=="function" then gemLabel:SetTitle("Gems: " .. gm.Value) end
end

task.spawn(function()
    while running and task.wait(0.5) do updateUI() end
end)

uis.JumpRequest:Connect(function()
    if sett.infJump and char and char:FindFirstChild("Humanoid") then
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

uis.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode == Enum.KeyCode[sett.toggleKey] then
        if win and typeof(win.Toggle)=="function" then win:Toggle()
        elseif win and typeof(win.Visible)~="nil" then win.Visible = not win.Visible end
    end
end)

plr.CharacterAdded:Connect(function(newChar)
    if flyLoop then stopFly() end
    if noclipLoop then noclipLoop:Disconnect(); noclipLoop=nil end
    resetNoclip()
    disableInvis()
    if sett.god and godDied then godDied:Disconnect(); godDied=nil end
    if sett.god and godHealthConn then godHealthConn:Disconnect(); godHealthConn=nil end
    if killLoop then killLoop:Disconnect(); killLoop=nil end
    setupChar(newChar)
    if sett.fly and not flyLoop then startFly() end
    if sett.noclip then
        if noclipLoop then noclipLoop:Disconnect() end
        noclipLoop = rs.Stepped:Connect(function() doNoclip() end)
    end
    if sett.invis then enableInvis() end
    if sett.god then enableGod() end
    if sett.autoKill and sett.targetPlayer ~= "" and sett.targetPlayer ~= "No other players" then
        if killLoop then killLoop:Disconnect() end
        local angle = 0
        killLoop = rs.Stepped:Connect(function()
            if not char or not root or not hum or hum.Health <= 0 then return end
            local target = nil
            for _,p in pairs(game.Players:GetPlayers()) do
                if p.Name == sett.targetPlayer and p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
                    target = p.Character:FindFirstChild("HumanoidRootPart")
                    break
                end
            end
            if target then
                angle = angle + sett.orbitSpeed * 0.1
                local orbitCF = CFrame.new(target.Position) * CFrame.Angles(0, angle, 0) * CFrame.new(sett.orbitDistance, 0, 0)
                root.CFrame = CFrame.new(orbitCF.Position, target.Position)
                root.Velocity = Vector3.new()
                if musEv then
                    local tool = char:FindFirstChild("Punch")
                    if not tool then
                        tool = plr.Backpack:FindFirstChild("Punch")
                        if tool then tool.Parent = char end
                    end
                    if tool then
                        local atk = tool:FindFirstChild("attackTime")
                        local cd = atk and atk.Value or 0.2
                        if tick() - killLastPunch >= cd then
                            killLastPunch = tick()
                            musEv:FireServer("punch", "rightHand")
                        end
                    end
                end
                updStatus("Killing " .. sett.targetPlayer)
            else
                updStatus("Kill: Target missing or dead")
            end
        end)
    end
end)

function getClosestMachine()
    if not machFolder then return nil end
    local closest, dist = nil, math.huge
    for _, m in pairs(machFolder:GetChildren()) do
        if m:IsA("Model") and m.PrimaryPart and m.PrimaryPart:IsA("Seat") then
            if not root then return nil end
            local d = (root.Position - m.PrimaryPart.Position).magnitude
            local scaled = 20
            if gf and gf.scaleMachineInteractDistance then scaled = gf.scaleMachineInteractDistance(scaled, scale and scale.Value or 1, m) end
            if d <= scaled and d < dist then closest = m.PrimaryPart; dist = d end
        end
    end
    return closest
end

function getClosestCrystal()
    if not cryFolder then return nil end
    local closest, dist = nil, math.huge
    for _, m in pairs(cryFolder:GetChildren()) do
        if m:IsA("Model") and m.PrimaryPart then
            if not root then return nil end
            local d = (root.Position - m.PrimaryPart.Position).magnitude
            if d < dist then closest = m; dist = d end
        end
    end
    return closest
end

function getClosestTreadmill()
    if not treadFolder then return nil end
    local closest, dist = nil, math.huge
    for _, m in pairs(treadFolder:GetChildren()) do
        if m:IsA("Model") and m:FindFirstChild("menuPart") then
            if not root then return nil end
            local part = m.menuPart
            local d = (root.Position - part.Position).magnitude
            if d < dist then closest = part; dist = d end
        end
    end
    return closest
end

function useConsumable(item) if musEv then musEv:FireServer("useItem", item) end end

notify("AvHub", "Loaded! Press " .. sett.toggleKey .. " to toggle UI.")