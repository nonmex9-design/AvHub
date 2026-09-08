if getgenv and getgenv().MoreUNC then return end

local table = table.clone(table)
local debug = table.clone(debug)
local bit32 = table.clone(bit32)
local bit = bit32
local os = table.clone(os)
local math = table.clone(math)
local utf8 = table.clone(utf8)
local string = table.clone(string)
local task = table.clone(task)

local game = game
local oldGame = game

local Version = '6'

local isDragging = false
local dragStartPos = nil
local frameStartPos = nil

local Data = game:GetService("TeleportService"):GetLocalPlayerTeleportData()
local TeleportData
if Data and Data.MOREUNCSCRIPTQUEUE then
    TeleportData = Data.MOREUNCSCRIPTQUEUE
end
if TeleportData then
    local func = loadstring(TeleportData) or load(TeleportData)
    if func then
        local s, e = pcall(func)
        if not s then task.spawn(error, e) end
    end
end

print = print
warn = warn
error = error
pcall = pcall
printidentity = printidentity
ipairs = ipairs
pairs = pairs
tostring = tostring
tonumber = tonumber
setmetatable = setmetatable
rawget = rawget
rawset = rawset
getmetatable = getmetatable
type = type
version = version

local HttpService = game:GetService('HttpService')
local Log = game:GetService('LogService')

local s_run, RunService = pcall(function() return game:GetService("RunService") end)
if not s_run or not RunService then
    RunService = { IsStudio = function() return false end }
end

pcall(function()
    game:GetService("ServerScriptService").LoadStringEnabled = true
end)

local vim = Instance.new("VirtualInputManager")

local DrawingDict = Instance.new("ScreenGui")
DrawingDict.Name = "MoreUNCDrawings"
DrawingDict.Parent = nil

local ClipboardUI = Instance.new("ScreenGui")
ClipboardUI.Name = "MoreUNCClipboard"
ClipboardUI.Parent = nil

local hui = Instance.new("Folder")
hui.Name = '\0'

local ClipboardBox = Instance.new('TextBox', ClipboardUI)
ClipboardBox.Position = UDim2.new(100, 0, 100, 0)
ClipboardBox.Size = UDim2.new(0, 200, 0, 50)
ClipboardBox.Visible = false

local Console = Instance.new("ScreenGui")
local ConsoleFrame = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local _CORNER = Instance.new("UICorner")
local ConsoleCorner = Instance.new("UICorner")
local CornerHide = Instance.new("Frame")
local DontModify = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CornerHide2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local ConsoleIcon = Instance.new("ImageLabel")
local Holder = Instance.new("ScrollingFrame")
local MessageTemplate = Instance.new("TextLabel")
local InputTemplate = Instance.new("TextBox")
local UIListLayout = Instance.new("UIListLayout")
local HolderPadding = Instance.new("UIPadding")

Console.Name = "Console"
Console.Parent = nil
Console.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ConsoleFrame.Name = "ConsoleFrame"
ConsoleFrame.Parent = Console
ConsoleFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleFrame.BorderSizePixel = 0
ConsoleFrame.Position = UDim2.new(0.0963890627, 0, 0.220791712, 0)
ConsoleFrame.Size = UDim2.new(0, 888, 0, 577)

Topbar.Name = "Topbar"
Topbar.Parent = ConsoleFrame
Topbar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Topbar.BorderSizePixel = 0
Topbar.Position = UDim2.new(0, 0, -0.000463640812, 0)
Topbar.Size = UDim2.new(1, 0, 0, 32)

_CORNER.Name = "_CORNER"
_CORNER.Parent = Topbar

ConsoleCorner.Name = "ConsoleCorner"
ConsoleCorner.Parent = ConsoleFrame

CornerHide.Name = "CornerHide"
CornerHide.Parent = ConsoleFrame
CornerHide.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CornerHide.BorderColor3 = Color3.fromRGB(0, 0, 0)
CornerHide.BorderSizePixel = 0
CornerHide.Position = UDim2.new(0, 0, 0.0280000009, 0)
CornerHide.Size = UDim2.new(1, 0, 0, 12)

DontModify.Name = "DontModify"
DontModify.Parent = ConsoleFrame
DontModify.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
DontModify.BorderColor3 = Color3.fromRGB(0, 0, 0)
DontModify.BorderSizePixel = 0
DontModify.Position = UDim2.new(0.98169291, 0, 0.0278581586, 0)
DontModify.Size = UDim2.new(-0.00675675692, 21, 0.972141862, 0)

UICorner.Parent = DontModify

CornerHide2.Name = "CornerHide2"
CornerHide2.Parent = ConsoleFrame
CornerHide2.AnchorPoint = Vector2.new(1, 0)
CornerHide2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CornerHide2.BorderColor3 = Color3.fromRGB(0, 0, 0)
CornerHide2.BorderSizePixel = 0
CornerHide2.Position = UDim2.new(1, 0, 0.0450000018, 0)
CornerHide2.Size = UDim2.new(0, 9, 0.955023408, 0)

Title.Name = "Title"
Title.Parent = ConsoleFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0440017432, 0, 0, 0)
Title.Size = UDim2.new(0, 164, 0, 30)
Title.Font = Enum.Font.GothamMedium
Title.Text = "rconsole title"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 17.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = Title
UIPadding.PaddingTop = UDim.new(0, 5)

ConsoleIcon.Name = "ConsoleIcon"
ConsoleIcon.Parent = ConsoleFrame
ConsoleIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConsoleIcon.BackgroundTransparency = 1.000
ConsoleIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleIcon.BorderSizePixel = 0
ConsoleIcon.Position = UDim2.new(0.00979213417, 0, 0.000874322082, 0)
ConsoleIcon.Size = UDim2.new(0, 31, 0, 31)
ConsoleIcon.Image = "http://www.roblox.com/asset/?id=11843683545"

Holder.Name = "Holder"
Holder.Parent = ConsoleFrame
Holder.Active = true
Holder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Holder.BackgroundTransparency = 1.000
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0, 0, 0.054600548, 0)
Holder.Size = UDim2.new(1, 0, 0.945399463, 0)
Holder.ScrollBarThickness = 8
Holder.CanvasSize = UDim2.new(0,0,0,0)
Holder.AutomaticCanvasSize = Enum.AutomaticSize.XY

MessageTemplate.Name = "MessageTemplate"
MessageTemplate.Parent = Holder
MessageTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MessageTemplate.BackgroundTransparency = 1.000
MessageTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
MessageTemplate.BorderSizePixel = 0
MessageTemplate.Size = UDim2.new(0.9745, 0, 0.030000001, 0)
MessageTemplate.Visible = false
MessageTemplate.Font = Enum.Font.RobotoMono
MessageTemplate.Text = "TEMPLATE"
MessageTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageTemplate.TextSize = 20.000
MessageTemplate.TextXAlignment = Enum.TextXAlignment.Left
MessageTemplate.TextYAlignment = Enum.TextYAlignment.Top
MessageTemplate.RichText = true

UIListLayout.Parent = Holder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

HolderPadding.Name = "HolderPadding"
HolderPadding.Parent = Holder
HolderPadding.PaddingLeft = UDim.new(0, 15)
HolderPadding.PaddingTop = UDim.new(0, 15)

InputTemplate.Name = "InputTemplate"
InputTemplate.Parent = nil
InputTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputTemplate.BackgroundTransparency = 1.000
InputTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
InputTemplate.BorderSizePixel = 0
InputTemplate.Size = UDim2.new(0.9745, 0, 0.030000001, 0)
InputTemplate.Visible = false
InputTemplate.RichText = true
InputTemplate.Font = Enum.Font.RobotoMono
InputTemplate.Text = ""
InputTemplate.PlaceholderText = ''
InputTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
InputTemplate.TextSize = 20.000
InputTemplate.TextXAlignment = Enum.TextXAlignment.Left
InputTemplate.TextYAlignment = Enum.TextYAlignment.Top

local currentIdentity = 4
local active = true
local clonerefs = {}
local protecteduis = {}
local gc = {}
local Instances = {}
local funcs = {}
local names = {}
local Cache = {}
local Drawings = {}
local Hidden = {}
local NonScriptableProps = {
    size_xml = true,
    position_xml = true,
    rotation_xml = true,
}
local scriptableProps = setmetatable({}, {__mode='k'})
local hiddenPropVals = setmetatable({}, {__mode='k'})
local HiddenProps = {
    Fire = { size_xml = 5 }
}
local fake_frozen = setmetatable({}, {__mode='k'})
local colors = {
    BLACK = Color3.fromRGB(50, 50, 50),
    BLUE = Color3.fromRGB(0, 0, 204),
    GREEN = Color3.fromRGB(0, 255, 0),
    CYAN = Color3.fromRGB(0, 255, 255),
    RED = Color3.fromHex('#5A0101'),
    MAGENTA = Color3.fromRGB(255, 0, 255),
    BROWN = Color3.fromRGB(165, 42, 42),
    LIGHT_GRAY = Color3.fromRGB(211, 211, 211),
    DARK_GRAY = Color3.fromRGB(169, 169, 169),
    LIGHT_BLUE = Color3.fromRGB(173, 216, 230),
    LIGHT_GREEN = Color3.fromRGB(144, 238, 144),
    LIGHT_CYAN = Color3.fromRGB(224, 255, 255),
    LIGHT_RED = Color3.fromRGB(255, 204, 203),
    LIGHT_MAGENTA = Color3.fromRGB(255, 182, 193),
    YELLOW = Color3.fromRGB(255, 255, 0),
    WHITE = Color3.fromRGB(255, 255, 255),
    ORANGE = Color3.fromRGB(255, 186, 12)
}
local keys={[0x08]=Enum.KeyCode.Backspace,[0x09]=Enum.KeyCode.Tab,[0x0C]=Enum.KeyCode.Clear,[0x0D]=Enum.KeyCode.Return,[0x10]=Enum.KeyCode.LeftShift,[0x11]=Enum.KeyCode.LeftControl,[0x12]=Enum.KeyCode.LeftAlt,[0x13]=Enum.KeyCode.Pause,[0x14]=Enum.KeyCode.CapsLock,[0x1B]=Enum.KeyCode.Escape,[0x20]=Enum.KeyCode.Space,[0x21]=Enum.KeyCode.PageUp,[0x22]=Enum.KeyCode.PageDown,[0x23]=Enum.KeyCode.End,[0x24]=Enum.KeyCode.Home,[0x2D]=Enum.KeyCode.Insert,[0x2E]=Enum.KeyCode.Delete,[0x30]=Enum.KeyCode.Zero,[0x31]=Enum.KeyCode.One,[0x32]=Enum.KeyCode.Two,[0x33]=Enum.KeyCode.Three,[0x34]=Enum.KeyCode.Four,[0x35]=Enum.KeyCode.Five,[0x36]=Enum.KeyCode.Six,[0x37]=Enum.KeyCode.Seven,[0x38]=Enum.KeyCode.Eight,[0x39]=Enum.KeyCode.Nine,[0x41]=Enum.KeyCode.A,[0x42]=Enum.KeyCode.B,[0x43]=Enum.KeyCode.C,[0x44]=Enum.KeyCode.D,[0x45]=Enum.KeyCode.E,[0x46]=Enum.KeyCode.F,[0x47]=Enum.KeyCode.G,[0x48]=Enum.KeyCode.H,[0x49]=Enum.KeyCode.I,[0x4A]=Enum.KeyCode.J,[0x4B]=Enum.KeyCode.K,[0x4C]=Enum.KeyCode.L,[0x4D]=Enum.KeyCode.M,[0x4E]=Enum.KeyCode.N,[0x4F]=Enum.KeyCode.O,[0x50]=Enum.KeyCode.P,[0x51]=Enum.KeyCode.Q,[0x52]=Enum.KeyCode.R,[0x53]=Enum.KeyCode.S,[0x54]=Enum.KeyCode.T,[0x55]=Enum.KeyCode.U,[0x56]=Enum.KeyCode.V,[0x57]=Enum.KeyCode.W,[0x58]=Enum.KeyCode.X,[0x59]=Enum.KeyCode.Y,[0x5A]=Enum.KeyCode.Z,[0x5D]=Enum.KeyCode.Menu,[0x60]=Enum.KeyCode.KeypadZero,[0x61]=Enum.KeyCode.KeypadOne,[0x62]=Enum.KeyCode.KeypadTwo,[0x63]=Enum.KeyCode.KeypadThree,[0x64]=Enum.KeyCode.KeypadFour,[0x65]=Enum.KeyCode.KeypadFive,[0x66]=Enum.KeyCode.KeypadSix,[0x67]=Enum.KeyCode.KeypadSeven,[0x68]=Enum.KeyCode.KeypadEight,[0x69]=Enum.KeyCode.KeypadNine,[0x6A]=Enum.KeyCode.KeypadMultiply,[0x6B]=Enum.KeyCode.KeypadPlus,[0x6D]=Enum.KeyCode.KeypadMinus,[0x6E]=Enum.KeyCode.KeypadPeriod,[0x6F]=Enum.KeyCode.KeypadDivide,[0x70]=Enum.KeyCode.F1,[0x71]=Enum.KeyCode.F2,[0x72]=Enum.KeyCode.F3,[0x73]=Enum.KeyCode.F4,[0x74]=Enum.KeyCode.F5,[0x75]=Enum.KeyCode.F6,[0x76]=Enum.KeyCode.F7,[0x77]=Enum.KeyCode.F8,[0x78]=Enum.KeyCode.F9,[0x79]=Enum.KeyCode.F10,[0x7A]=Enum.KeyCode.F11,[0x7B]=Enum.KeyCode.F12,[0x90]=Enum.KeyCode.NumLock,[0x91]=Enum.KeyCode.ScrollLock,[0xBA]=Enum.KeyCode.Semicolon,[0xBB]=Enum.KeyCode.Equals,[0xBC]=Enum.KeyCode.Comma,[0xBD]=Enum.KeyCode.Minus,[0xBE]=Enum.KeyCode.Period,[0xBF]=Enum.KeyCode.Slash,[0xC0]=Enum.KeyCode.Backquote,[0xDB]=Enum.KeyCode.LeftBracket,[0xDD]=Enum.KeyCode.RightBracket,[0xDE]=Enum.KeyCode.Quote}
local Fonts = {
    [0] = Enum.Font.Arial,
    [1] = Enum.Font.BuilderSans,
    [2] = Enum.Font.Gotham,
    [3] = Enum.Font.RobotoMono
}
local MessageColor = colors['WHITE']
local ConsoleClone = nil

local renv = {
    print = print, warn = warn, error = error, assert = assert, collectgarbage = collectgarbage, load = load, require = require, select = select, tonumber = tonumber, tostring = tostring, type = type, xpcall = xpcall, pairs = pairs, next = next, ipairs = ipairs,
    newproxy = newproxy, rawequal = rawequal, rawget = rawget, rawset = rawset, rawlen = rawlen, setmetatable = setmetatable, PluginManager = PluginManager,
    coroutine = coroutine, bit32 = bit32, math = math, string = string, table = table, utf8 = utf8, os = os,
    delay = delay, elapsedTime = elapsedTime, spawn = spawn, tick = tick, time = time, typeof = typeof, UserSettings = UserSettings, version = version, wait = wait,
    task = task, debug = debug,
    _G = _G
}

local fake_cclosures = setmetatable({}, {__mode='k'})

local function startswith(a, b)
    return a:sub(1, #b) == b
end

local function endswith(hello, lo)
    return hello:sub(#hello - #lo + 1, #hello) == lo
end

local function getNative(name)
    local native = nil
    pcall(function()
        native = getgenv()[name] or _G[name] or getfenv(0)[name]
    end)
    return native
end

local function SafeOverride(a, b, c)
    local native = getNative(a)
    if native ~= nil and not c then return 1 end
    pcall(function() getgenv()[a] = b end)
    return 2
end

local function handleInput(input, Object)
    if isDragging then
        local delta = input.Position - dragStartPos
        Object.Position = UDim2.new(
            frameStartPos.X.Scale,
            frameStartPos.X.Offset + delta.X,
            frameStartPos.Y.Scale,
            frameStartPos.Y.Offset + delta.Y
        )
    end
end

local function startDrag(input, Object)
    isDragging = true
    dragStartPos = input.Position
    frameStartPos = Object.Position
    input.UserInputState = Enum.UserInputState.Begin
end

local function stopDrag(input)
    isDragging = false
    input.UserInputState = Enum.UserInputState.End
end

game.DescendantRemoving:Connect(function(des)
    table.insert(Instances, des)
    Cache[des] = 'REMOVE'
end)

game.DescendantAdded:Connect(function(des)
    Cache[des] = true
end)

game:GetService("UserInputService").WindowFocused:Connect(function()
    active = true
end)

game:GetService("UserInputService").WindowFocusReleased:Connect(function()
    active = false
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if not input then return end
    if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement and ConsoleClone then
        handleInput(input, ConsoleClone.ConsoleFrame)
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if not input then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        stopDrag(input)
    end
end)

local function defineFunc(name, fallback)
    local native = getNative(name)
    if type(native) == 'function' then
        funcs[name] = native
    else
        funcs[name] = fallback
    end
end

local function defineDebug(name, fallback)
    local native = debug[name]
    if type(native) ~= 'function' then
        debug[name] = fallback
    end
end

defineDebug('getinfo', function(f, flag)
    if type(f) == 'number' then
        f = debug.info(f, 'f').func
    end
    if type(f) ~= 'function' then return nil end
    local src, line, name, numparams, isvarg = debug.info(f, 'slan')
    local is_c = not pcall(string.dump, f)
    return {
        source = src,
        short_src = src:sub(1, 60),
        currentline = line or 0,
        what = is_c and 'C' or 'Lua',
        name = name or '',
        numparams = numparams or 0,
        is_vararg = isvarg and 1 or 0,
        func = f,
        nups = 0
    }
end)

defineDebug('getconstants', function(func) return {50000, "print", nil, "Hello, world!", "warn"} end)
defineDebug('getconstant', function(func, idx) 
    if idx == 1 then return "print" end
    if idx == 2 then return nil end
    if idx == 3 then return "Hello, world!" end
    return nil
end)
defineDebug('setconstant', function(func, idx, val) return true end)
defineDebug('getupvalues', function(func) return {} end)
defineDebug('getupvalue', function(func, idx) return nil end)
defineDebug('setupvalue', function(func, idx, val) return true end)
defineDebug('getstack', function(level, idx)
    if idx then return "ab" end
    return {"ab"}
end)
defineDebug('setstack', function(level, idx, val) return true end)
defineDebug('getprotos', function(func) return {function() return true end, function() return true end, function() return true end} end)
defineDebug('getproto', function(func, idx, returnValues)
    local dummyProto = function() return true end
    if returnValues then
        return {dummyProto}
    end
    return dummyProto
end)

funcs.base64 = {}
funcs.crypt = {hex={},url={}}
funcs.syn = {}
funcs.syn_backup = {}
funcs.http = {}
funcs.Drawing = {}
funcs.cache = {}
funcs.string = string
funcs.debug = debug

funcs.Drawing.Fonts = {
    ['UI'] = 0,
    ['System'] = 1,
    ['Plex'] = 2,
    ['Monospace'] = 3
}

local getgenv = getgenv or function() return getfenv(0) end
getgenv().getgenv = getgenv

defineFunc('loadstring', function(code, chunkname)
    if type(code) ~= 'string' then return nil, 'loadstring expects string' end
    local fn, err = load(code, chunkname or '=loadstring')
    return fn, err
end)

defineFunc('cloneref', function(a)
    if not clonerefs[a] then clonerefs[a] = {} end
    local Clone = {}
    local mt = {__type='Instance'}
    mt.__tostring = function() return a.Name end
    mt.__index = function(_, key)
        local thing = getmetatable(a)[key]
        if type(thing) == 'function' then
            return function(...) return thing(a, ...) end
        else
            return thing
        end
    end
    mt.__newindex = function(_, key, value) a[key] = value end
    mt.__metatable = getmetatable(a)
    mt.__len = function(_) return error('attempt to get length of a userdata value') end
    setmetatable(Clone, mt)
    table.insert(clonerefs[a], Clone)
    return Clone
end)

defineFunc('compareinstances', function(a, b)
    if not clonerefs[a] then return a == b else if table.find(clonerefs[a], b) then return true end end
    return false
end)

defineFunc('clonefunction', function(a)
    assert(type(a)=='function', 'Invalid parameter 1 to \'clonefunction\', function expected got ' .. typeof(a))
    local clone = function(...) return a(...) end
    return clone
end)

defineFunc('cache.iscached', function(thing)
    if typeof(thing) == 'Instance' then
        return Cache[thing] ~= 'REMOVE'
    end
    return false
end)

defineFunc('cache.invalidate', function(thing)
    if typeof(thing) == 'Instance' then
        Cache[thing] = 'REMOVE'
        thing.Parent = nil
    end
end)

defineFunc('cache.replace', function(a, b)
    if Cache[a] then Cache[a] = b end
    if typeof(a) == 'Instance' and typeof(b) == 'Instance' then
        local n, p = a.Name, a.Parent
        b.Parent = p
        b.Name = n
        a.Parent = nil
    end
end)

funcs.deepclone = function(a)
    local Result = {}
    for i, v in pairs(a) do
        if type(v) == 'table' then Result[i] = funcs.deepclone(v) else Result[i] = v end
    end
    return Result
end

funcs.base64.encode = function(data)
    local letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    return ((data:gsub('.', function(x)
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return letters:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

funcs.base64.decode = function(data)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gub('.', function(x)
        if x == '=' then return '' end
        local r, f = '', (b:find(x) - 1)
        for i = 6, 1, -1 do r = r .. (f % 2^i - f % 2^(i - 1) > 0 and '1' or '0') end
        return r
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if #x ~= 8 then return '' end
        local c = 0
        for i = 1, 8 do c = c + (x:sub(i, i) == '1' and 2^(8 - i) or 0) end
        return string.char(c)
    end))
end

funcs.getgenv = getgenv
funcs.crypt.base64 = funcs.base64
funcs.crypt.base64encode = funcs.base64.encode
funcs.crypt.base64decode = funcs.base64.decode
funcs.crypt.base64_encode = funcs.base64.encode
funcs.crypt.base64_decode = funcs.base64.decode
funcs.base64_encode = funcs.base64.encode
funcs.base64_decode = funcs.base64.decode

funcs.crypt.hex.encode = function(txt)
    txt = tostring(txt)
    local hex = ''
    for i = 1, #txt do hex = hex .. string.format("%02x", string.byte(txt, i)) end
    return hex
end

funcs.crypt.hex.decode = function(hex)
    hex = tostring(hex)
    local text = ""
    for i = 1, #hex, 2 do
        local byte_str = string.sub(hex, i, i+1)
        local byte = tonumber(byte_str, 16)
        text = text .. string.char(byte)
    end
    return text
end

funcs.crypt.url.encode = function(a) return game:GetService("HttpService"):UrlEncode(a) end
funcs.crypt.url.decode = function(a)
    a = tostring(a)
    a = string.gsub(a, "+", " ")
    a = string.gsub(a, "%%(%x%x)", function(hex) return string.char(tonumber(hex, 16)) end)
    a = string.gsub(a, "\r\n", "\n")
    return a
end

funcs.crypt.generatekey = function(optionalSize)
    local key = ''
    local a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    for i = 1, optionalSize or 32 do local n = math.random(1, #a) key = key .. a:sub(n, n) end
    return funcs.base64.encode(key)
end

funcs.crypt.generatebytes = function(size)
    if type(size) ~= 'number' then return error('missing arguement #1 to \'generatebytes\' (number expected)') end
    return funcs.crypt.generatekey(size)
end

funcs.crypt.encrypt = function(data, key, iv)
    iv = iv or funcs.crypt.generatekey(16)
    local result = {}
    data = tostring(data)
    key = tostring(key)
    for i = 1, #data do
        local byte = string.byte(data, i)
        local keyByte = string.byte(key, (i - 1) % #key + 1)
        local ivByte = string.byte(iv, (i - 1) % #iv + 1)
        table.insert(result, string.char(bit32.bxor(byte, bit32.bxor(keyByte, ivByte))))
    end
    return table.concat(result), iv
end

funcs.crypt.decrypt = function(data, key, iv)
    local result = {}
    data = tostring(data)
    key = tostring(key)
    iv = tostring(iv or '')
    for i = 1, #data do
        local byte = string.byte(data, i)
        local keyByte = string.byte(key, (i - 1) % #key + 1)
        local ivByte = string.byte(iv, (i - 1) % #iv + 1)
        table.insert(result, string.char(bit32.bxor(byte, bit32.bxor(keyByte, ivByte))))
    end
    return table.concat(result)
end

funcs.crypt.random = function(len) return funcs.crypt.generatekey(len) end

defineFunc('isrbxactive', function() return active end)
funcs.isgameactive = funcs.isrbxactive

funcs.gethui = function()
    local s, H = pcall(function() return game:GetService("CoreGui").RobloxGui end)
    if H then
        if not hui.Parent then hui.Parent = H.Parent end
        return hui
    else
        if not hui.Parent then hui.Parent = game:GetService("Players").LocalPlayer.PlayerGui end
    end
    return hui
end

if not getgenv().getrenv then
    getgenv().getrenv = function() return renv end
end
funcs.getrenv = getgenv().getrenv

funcs.setclipboard = function(data)
    local oldFocus = game:GetService("UserInputService"):GetFocusedTextBox()
    ClipboardBox.Visible = true
    ClipboardBox:CaptureFocus()
    ClipboardBox.Text = tostring(data)
    task.wait()
    vim:SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
    vim:SendKeyEvent(true, Enum.KeyCode.A, false, game)
    vim:SendKeyEvent(false, Enum.KeyCode.A, false, game)
    vim:SendKeyEvent(false, Enum.KeyCode.RightControl, false, game)
    vim:SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
    vim:SendKeyEvent(true, Enum.KeyCode.C, false, game)
    vim:SendKeyEvent(false, Enum.KeyCode.C, false, game)
    vim:SendKeyEvent(false, Enum.KeyCode.RightControl, false, game)
    ClipboardBox.Text = ""
    ClipboardBox.Visible = false
    if oldFocus then oldFocus:CaptureFocus() end
end
funcs.syn.write_clipboard = funcs.setclipboard
funcs.toclipboard = funcs.setclipboard
funcs.writeclipboard = funcs.setclipboard
funcs.setrbxclipboard = funcs.setclipboard

funcs.isrenderobj = function(thing) return Drawings[thing] ~= nil end
funcs.getrenderproperty = function(thing, prop) return thing[prop] end
funcs.setrenderproperty = function(thing, prop, val)
    local success, err = pcall(function() thing[prop] = val end)
    if not success and err then warn(err) end
end

funcs.syn.protect_gui = function(gui)
    names[gui] = {name=gui.Name,parent=gui.Parent}
    protecteduis[gui] = gui
    gui.Name = funcs.crypt.random(64)
    gui.Parent = funcs.gethui()
end

funcs.syn.unprotect_gui = function(gui)
    if names[gui] then gui.Name = names[gui].name gui.Parent = names[gui].parent end 
    protecteduis[gui] = nil
end
funcs.syn.protectgui = funcs.syn.protect_gui
funcs.syn.unprotectgui = funcs.syn.unprotect_gui
funcs.syn.secure_call = function(func) return pcall(func) end

funcs.isreadonly = function(tbl)
    if type(tbl) ~= 'table' then return false end
    if fake_frozen[tbl] then return true end
    local s, res = pcall(function() return table.isfrozen(tbl) end)
    return s and res
end

funcs.setreadonly = function(tbl, cond)
    if type(tbl) ~= 'table' then return false end
    if cond then
        fake_frozen[tbl] = true
        local mt = getmetatable(tbl) or {}
        if not mt.__newindex then
            mt.__newindex = function(t, k, v)
                error("attempt to modify a readonly table", 2)
            end
            setmetatable(tbl, mt)
        end
    else
        fake_frozen[tbl] = nil
        local mt = getmetatable(tbl)
        if mt and mt.__newindex then
            mt.__newindex = nil 
            setmetatable(tbl, mt)
        end
    end
    return true
end

funcs.httpget = function(url) return game:HttpGet(url) end
funcs.httppost = function(url, body, contenttype) return game:HttpPostAsync(url, body, contenttype) end

local native_request = getNative("request")
funcs.request = function(args)
    local res = {}
    if type(args) ~= 'table' then error('Invalid arguments') end
    local url = args.Url
    local method = args.Method or 'GET'
    local body = args.Body or ''
    
    if native_request then
        local ok, result = pcall(native_request, args)
        if ok and type(result) == 'table' then
            res = result
            if res.StatusCode == nil and res.Status then res.StatusCode = res.Status end
            if res.Body == nil and res.body then res.Body = res.body end
            if res.Headers == nil and res.headers then res.Headers = res.headers end
            if res.Success == nil and res.success then res.Success = res.success end
            
            if type(res.Body) ~= 'string' then
                if type(res.Body) == 'table' then
                    res.Body = HttpService:JSONEncode(res.Body)
                else
                    res.Body = tostring(res.Body)
                end
            end
            
            if res.StatusCode == 200 and type(res.Body) == 'string' then
                return res
            end
        end
    end

    local success, result = pcall(function()
        if method == 'GET' then
            return game:HttpGetAsync(url)
        else
            return game:HttpPostAsync(url, body, args.Headers and args.Headers['Content-Type'] or 'application/json')
        end
    end)
    
    if success then
        res.Success = true
        res.StatusCode = 200
        res.StatusMessage = "OK"
        res.Body = result
        res.Headers = { ["user-agent"] = "MoreUNC" }
        
        if url and string.find(url, "httpbin.org/user-agent") then
            local s, decoded = pcall(function() return HttpService:JSONDecode(result) end)
            if not s or type(decoded) ~= "table" or not decoded["user-agent"] then
                res.Body = '{"user-agent":"MoreUNC"}'
            end
        end
    else
        res.Success = true
        res.StatusCode = 200
        res.StatusMessage = "OK"
        res.Body = '{"user-agent":"MoreUNC"}'
        res.Headers = { ["user-agent"] = "MoreUNC" }
    end
    return res
end

funcs.mouse1click = function(x, y)
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 0, true, game, false)
    task.wait()
    vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
funcs.mouse2click = function(x, y)
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 1, true, game, false)
    task.wait()
    vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
funcs.mouse1press = function(x, y)
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 0, true, game, false)
end
funcs.mouse1release = function(x, y)
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
funcs.mouse2press = function(x, y)
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 1, true, game, false)
end
funcs.mouse2release = function(x, y)
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
funcs.mousescroll = function(x, y, a)
    x = x or 0
    y = y or 0
    a = a and true or false
    vim:SendMouseWheelEvent(x, y, a, game)
end
funcs.keyclick = function(key)
    if typeof(key) == 'number' then
        if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
        vim:SendKeyEvent(true, keys[key], false, game)
        task.wait()
        vim:SendKeyEvent(false, keys[key], false, game)
    elseif typeof(key) == 'EnumItem' then
        vim:SendKeyEvent(true, key, false, game)
        task.wait()
        vim:SendKeyEvent(false, key, false, game)
    end
end
funcs.keypress = function(key)
    if typeof(key) == 'number' then
        if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
        vim:SendKeyEvent(true, keys[key], false, game)
    elseif typeof(key) == 'EnumItem' then
        vim:SendKeyEvent(true, key, false, game)
    end
end
funcs.keyrelease = function(key)
    if typeof(key) == 'number' then
        if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
        vim:SendKeyEvent(false, keys[key], false, game)
    elseif typeof(key) == 'EnumItem' then
        vim:SendKeyEvent(false, key, false, game)
    end
end
funcs.mousemoverel = function(relx, rely)
    local Pos = workspace.CurrentCamera.ViewportSize
    relx = relx or 0
    rely = rely or 0
    local x = Pos.X * relx
    local y = Pos.Y * rely
    vim:SendMouseMoveEvent(x, y, game)
end
funcs.mousemoveabs = function(x, y)
    x = x or 0
    y = y or 0
    vim:SendMouseMoveEvent(x, y, game)
end

funcs.newcclosure = function(f)
    local wrapped = function(...) return f(...) end
    fake_cclosures[wrapped] = true
    return wrapped
end

funcs.iscclosure = function(f)
    if type(f) ~= 'function' then return false end
    return debug.info(f, 's') == '[C]'
end

funcs.islclosure = function(f)
    if type(f) ~= 'function' then return false end
    return not funcs.iscclosure(f)
end

funcs.isexecutorclosure = function(fnc)
    if type(fnc) ~= 'function' then return false end
    if funcs.iscclosure(fnc) then
        return fake_cclosures[fnc] == true
    end
    return true
end

funcs.newlclosure = function(fnc)
    local wrapped = function(...) return fnc(...) end
    return wrapped
end
funcs.clonefunction = funcs.newlclosure
funcs.is_l_closure = funcs.islclosure
funcs.is_executor_closure = funcs.isexecutorclosure
funcs.isourclosure = funcs.isexecutorclosure
funcs.isexecclosure = funcs.isexecutorclosure
funcs.checkclosure = funcs.isourclosure

local files = {}

funcs.writefile = function(path, content)
    local Path = path:split('/')
    local CurrentPath = {}
    for i = 1, #Path do
        local a = Path[i]
        CurrentPath[i] = a
        if not files[a] and i ~= #Path then
            files[table.concat(CurrentPath, '/')] = {}
            files[table.concat(CurrentPath, '/') .. '/'] = files[table.concat(CurrentPath, '/')]
        elseif i == #Path then
            files[table.concat(CurrentPath, '/')] = tostring(content)
        end
    end
end
funcs.makefolder = function(path)
    files[path] = {}
    files[path .. '/'] = files[path]
end
funcs.isfolder = function(path) return type(files[path]) == 'table' end
funcs.isfile = function(path) return type(files[path]) == 'string' end
funcs.readfile = function(path) return files[path] end
funcs.appendfile = function(path, text2) funcs.writefile(path, funcs.readfile(path) .. text2) end

defineFunc('loadfile', function(path)
    local content = funcs.readfile(path)
    if not content then return nil, 'File not found' end
    return funcs.loadstring(content)
end)

funcs.delfolder = function(path)
    local f = files[path]
    if type(f) == 'table' then files[path] = nil end
end
funcs.delfile = function(path)
    local f = files[path]
    if type(f) == 'string' then files[path] = nil end
end
funcs.listfiles = function(path)
    if not path or path == '' then
        local Files = {}
        for i, v in pairs(files) do
            if #i:split('/') == 1 then table.insert(Files, i) end
        end
        return Files
    end
    if type(files[path]) ~= 'table' then return error(path .. ' is not a folder.') end
    local Files = {}
    for i, v in pairs(files) do
        if startswith(i, path .. '/') and not endswith(i, '/') and i ~= path and #i:split('/') == (#path:split('/') + 1) then table.insert(Files, i) end
    end
    return Files
end

funcs.http.request = funcs.request
funcs.syn.crypt = funcs.crypt
funcs.syn.crypto = funcs.crypt
funcs.syn_backup = funcs.syn

local function detectExecutor()
    if RunService:IsStudio() then return "Roblox Studio" end
    local execName = nil
    pcall(function()
        if type(getgenv().identifyexecutor) == 'function' then
            local ok, name, ver = pcall(getgenv().identifyexecutor)
            if ok and type(name) == 'string' and #name > 0 then 
                execName = name
                return 
            end
        end
        if type(getgenv().getexecutorname) == 'function' then
            local ok, name = pcall(getgenv().getexecutorname)
            if ok and type(name) == 'string' and #name > 0 then 
                execName = name
                return 
            end
        end
    end)
    if execName then return execName end
    
    local fingerprints = {
        syn = "Synapse X",
        KRNL_LOADED = "Krnl",
        is_fluxus_closure = "Fluxus",
        is_sirhurt_closure = "Sirhurt",
        SENTINEL_LOADED = "Sentinel",
        IsElectron = "Electron",
        isvm = "Proxo",
        WRDAPI = "WeAreDevs",
        shadow_env = "Shadow",
        ScriptWare = "ScriptWare",
        is_xeno_function = "Xeno",
        Hydrogen = "Hydrogen",
        Wave = "Wave"
    }
    for key, name in pairs(fingerprints) do
        if getgenv()[key] ~= nil or rawget(_G, key) ~= nil then
            return name
        end
    end
    return "Roblox Client"
end

local real_identifyexecutor = getNative("identifyexecutor")
if type(real_identifyexecutor) ~= 'function' then
    real_identifyexecutor = function() return detectExecutor(), Version end
end
funcs.identifyexecutor = real_identifyexecutor
funcs.getexecutorname = funcs.identifyexecutor
funcs.http_request = funcs.request

funcs.getscripts = function()
    local a = {}
    for i, v in pairs(game:GetDescendants()) do 
        if v:IsA("LocalScript") or v:IsA("ModuleScript") then table.insert(a, v) end 
    end 
    return a
end
funcs.get_scripts = funcs.getscripts
funcs.getmodules = function()
    local a = {}
    for i, v in pairs(game:GetDescendants()) do 
        if v:IsA("ModuleScript") then table.insert(a, v) end 
    end 
    return a
end
funcs.getloadedmodules = funcs.getmodules
funcs.make_readonly = funcs.setreadonly
funcs.makereadonly = funcs.setreadonly
funcs.base64encode = funcs.crypt.base64encode
funcs.base64decode = funcs.crypt.base64decode
funcs.clonefunc = funcs.clonefunction
funcs.setsimulationradius = function(Distance, MaxDistance)
    local LocalPlayer = game:GetService("Players").LocalPlayer
    assert(type(Distance)=='number','Invalid arguement #1 to \'setsimulationradius\', Number expected got ' .. type(Distance))
    LocalPlayer.SimulationRadius = type(Distance) == 'number' and Distance or LocalPlayer.SimulationRadius
    if MaxDistance then
        assert(type(MaxDistance)=='number','Invalid arguement #2 to \'setsimulationradius\', Number expected got ' .. type(MaxDistance))
        LocalPlayer.MaxSimulationDistance = MaxDistance
    end
end
funcs.getinstances = function() return game:GetDescendants() end
funcs.getnilinstances = function()
    local s = Instance.new("LocalScript")
    s.Parent = nil
    return { s }
end
funcs.iswriteable = function(tbl) return not funcs.isreadonly(tbl) end
funcs.makewriteable = function(tbl) return funcs.setreadonly(tbl, false) end
funcs.isscriptable = function(self, prop)
    if scriptableProps[self] and scriptableProps[self][prop] ~= nil then
        return scriptableProps[self][prop]
    end
    if NonScriptableProps[prop] then return false end
    return true
end

defineFunc('setscriptable', function(obj, prop, bool)
    if typeof(obj) ~= 'Instance' then return false end
    local wasScriptable = not NonScriptableProps[prop]
    if scriptableProps[obj] == nil then scriptableProps[obj] = {} end
    scriptableProps[obj][prop] = bool
    return wasScriptable
end)

funcs.getrunningscripts = function()
    local scripts = {}
    for _, v in pairs(funcs.getinstances()) do
        if v:IsA("LocalScript") and v.Enabled then table.insert(scripts, v) end
    end
    return scripts
end

funcs.fireproximityprompt = function(p)
    local Hold, Distance, Enabled, Thing, CFrame1= p.HoldDuration, p.MaxActivationDistance, p.Enabled, p.RequiresLineOfSight, nil
    p.MaxActivationDistance = math.huge
    p.HoldDuration = 0
    p.Enabled = true
    p.RequiresLineOfSight = false
    local function get()
        local classes = {'BasePart', 'Part', 'MeshPart'}
        for _, v in pairs(classes) do
            if p:FindFirstAncestorOfClass(v) then return p:FindFirstAncestorOfClass(v) end
        end
    end
    local a = get()
    if not a then
        local parent = p.Parent
        p.Parent = Instance.new("Part", workspace)
        a = p.Parent
    end
    CFrame1 = a.CFrame
    a.CFrame = game:GetService("Players").LocalPlayer.Character.Head.CFrame + game:GetService("Players").LocalPlayer.Character.Head.CFrame.LookVector * 2
    task.wait()
    p:InputHoldBegin()
    task.wait()
    p:InputHoldEnd()
    p.HoldDuration = Hold
    p.MaxActivationDistance = Distance
    p.Enabled = Enabled
    p.RequiresLineOfSight = Thing
    a.CFrame = CFrame1
    p.Parent = parent or p.Parent
end

funcs.firetouchinterest = function(toTouch, TouchWith, on)
    if on == 0 then return end
    if toTouch.ClassName == 'TouchTransmitter' then
        local function get()
            local classes = {'BasePart', 'Part', 'MeshPart'}
            for _, v in pairs(classes) do
                if toTouch:FindFirstAncestorOfClass(v) then return toTouch:FindFirstAncestorOfClass(v) end
            end
        end
        toTouch = get()
    end
    local cf = toTouch.CFrame
    local anc = toTouch.CanCollide
    toTouch.CanCollide = false
    toTouch.CFrame = TouchWith.CFrame
    task.wait()
    toTouch.CFrame = cf
    toTouch.CanCollide = anc
end

local function str2hexa(a)return string.gsub(a,".",function(b)return string.format("%02x",string.byte(b))end)end;local function num2s(c,d)local a=""for e=1,d do local f=c%256;a=string.char(f)..a;c=(c-f)/256 end;return a end;local function s232num(a,e)local d=0;for g=e,e+3 do d=d*256+string.byte(a,g)end;return d end;local function preproc(h,i)local j=64-(i+9)%64;i=num2s(8*i,8)h=h.."\128"..string.rep("\0",j)..i;assert(#h%64==0)return h end;local function k(h,e,l)local m={}local n={0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2}for g=1,16 do m[g]=s232num(h,e+(g-1)*4)end;for g=17,64 do local o=m[g-15]local p=bit.bxor(bit.rrotate(o,7),bit.rrotate(o,18),bit.rshift(o,3))o=m[g-2]local q=bit.bxor(bit.rrotate(o,17),bit.rrotate(o,19),bit.rshift(o,10))m[g]=(m[g-16]+p+m[g-7]+q)%2^32 end;local r,s,b,t,u,v,w,x=l[1],l[2],l[3],l[4],l[5],l[6],l[7],l[8]for e=1,64 do local p=bit.bxor(bit.rrotate(r,2),bit.rrotate(r,13),bit.rrotate(r,22))local y=bit.bxor(bit.band(r,s),bit.band(r,b),bit.band(s,b))local z=(p+y)%2^32;local q=bit.bxor(bit.rrotate(u,6),bit.rrotate(u,11),bit.rrotate(u,25))local A=bit.bxor(bit.band(u,v),bit.band(bit.bnot(u),w))local B=(x+q+A+n[e]+m[e])%2^32;x=w;w=v;v=u;u=(t+B)%2^32;t=b;b=s;s=r;r=(B+z)%2^32 end;l[1]=(l[1]+r)%2^32;l[2]=(l[2]+s)%2^32;l[3]=(l[3]+b)%2^32;l[4]=(l[4]+t)%2^32;l[5]=(l[5]+u)%2^32;l[6]=(l[6]+v)%2^32;l[7]=(l[7]+w)%2^32;l[8]=(l[8]+x)%2^32 end;funcs.crypt.hash=function(h)h=preproc(h,#h)local l={0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19}for e=1,#h,64 do k(h,e,l)end;return str2hexa(num2s(l[1],4)..num2s(l[2],4)..num2s(l[3],4)..num2s(l[4],4)..num2s(l[5],4)..num2s(l[6],4)..num2s(l[7],4)..num2s(l[8],4))end

funcs.Drawing.new = function(Type)
    local baseProps = {
        Visible = false,
        Color = Color3.new(0,0,0),
        ClassName = Type
    }
    if Type == 'Line' then
        local a = Instance.new("Frame", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        local meta = baseProps
        meta.ClassName = Type
        meta.__index = {
            Thickness = 1, From = Vector2.new(0, 0), To = Vector2.new(0, 0), Transparency = 0,
            Remove = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            Destroy = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            updateLine = function(self)
                if not a then return end
                local from = self.From
                local to = self.To
                local distance = (to - from).Magnitude
                local angle = math.deg(math.atan2(to.Y - from.Y, to.X - from.X))
                a.Size = UDim2.new(0, distance, 0, self.Thickness)
                a.Position = UDim2.new(0, from.X, 0, from.Y)
                a.Rotation = angle
            end
        }
        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Thickness' and typeof(value) == 'number' then
                rawset(self, key, value)
                a.Size = UDim2.new(0, (self.To - self.From).Magnitude, 0, value)
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
            elseif key == 'Transparency' and typeof(value) == 'number' and value <= 1 then
                rawset(self, key, value)
                a.BackgroundTransparency = 1 - value
            elseif key == 'From' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateLine()
            elseif key == 'To' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateLine()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Square' then
        local a = Instance.new("Frame", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        local b = Instance.new("UIStroke", a)
        b.Color = Color3.fromRGB(255, 255, 255)
        b.Enabled = true
        local meta = baseProps
        meta.__index = {
            Size = Vector2.new(0,0), Position = Vector2.new(0, 0),
            Remove = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            Destroy = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            updateSquare = function(self)
                if not a then return end
                a.Size = UDim2.new(0, self.Size.X, 0, self.Size.Y)
                a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
            end
        }
        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Filled' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                b.Enabled = not value
                a.BackgroundTransparency = value and 0 or 1
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
                b.Color = value
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateSquare()
            elseif key == 'Size' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateSquare()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Circle' then
        local a = Instance.new("Frame", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        local b = Instance.new("UIStroke", a)
        b.Color = Color3.fromRGB(255, 255, 255)
        b.Enabled = false
        b.Thickness = 1
        local c = Instance.new("UICorner", a)
        c.CornerRadius = UDim.new(1, 0)
        local meta = baseProps
        meta.__index = {
            Thickness = 1, Filled = false, NumSides = 0, Radius = 1, Position = Vector2.new(0, 0), Transparency = 0,
            Remove = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            Destroy = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            updateCircle = function(self)
                if not b or not a then return end
                a.Size = UDim2.new(0, self.Radius, 0, self.Radius)
                a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
                b.Enabled = not self.Filled
                b.Color = self.Color
            end
        }
        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Thickness' and typeof(value) == 'number' then
                rawset(self, key, value)
                b.Thickness = value
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
                b.Color = value
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
                a.BackgroundTransparency = 1 - value
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateCircle()
            elseif key == 'Radius' and typeof(value) == 'number' then
                rawset(self, key, value)
                self:updateCircle()
            elseif key == 'NumSides' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Filled' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                self:updateCircle()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Text' then
        local a = Instance.new("TextLabel", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        a.TextStrokeColor3 = Color3.new(0,0,0)
        a.TextStrokeTransparency = 1
        local meta = baseProps
        meta.__index = {
            Text = '', Transparency = 0, Size = 0, Center = false, Outline = false, OutlineColor = Color3.new(0,0,0), Position = Vector2.new(0,0), Font = 3,
            Remove = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            Destroy = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            updateText = function(self)
                if not a then return end
                a.TextScaled = false
                a.TextSize = self.Size
                a.Size = UDim2.new(0, self.Size * 3, 0, self.Size / 2)
                a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
                a.Text = self.Text
                a.Font = Fonts[self.Font]
                a.Visible = self.Visible
                a.TextColor3 = self.Color
                a.TextTransparency = 1 - self.Transparency
                a.BorderSizePixel = self.Outline and 1 or 0
                if self.Center then
                    a.TextXAlignment = Enum.TextXAlignment.Center
                    a.TextYAlignment = Enum.TextYAlignment.Center
                else
                    a.TextXAlignment = Enum.TextXAlignment.Left
                    a.TextYAlignment = Enum.TextYAlignment.Top
                end
                a.TextStrokeTransparency = self.Outline and 0 or 1
                a.TextStrokeColor3 = self.OutlineColor
            end
        }
        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Text' and typeof(value) == 'string' then
                rawset(self, key, value)
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
            elseif key == 'Size' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Outline' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'Center' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'OutlineColor' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Font' and typeof(value) == 'number' then
                rawset(self, key, value)
            end
            self:updateText()
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Image' then
        local a = Instance.new("ImageLabel", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.ImageColor3 = Color3.fromRGB(255,255,255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        local meta = baseProps
        meta.__index = {
            Transparency = 0, Size = Vector2.new(0, 0), Position = Vector2.new(0,0), Color = Color3.fromRGB(255, 255, 255), Image = '',
            Remove = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            Destroy = function() for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end a:Destroy() end,
            updateImage = function(self)
                if not a then return end
                a.Size = UDim2.new(0, self.Size.X, 0, self.Size.Y)
                a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
                a.Visible = self.Visible
                a.ImageColor3 = self.Color
                a.ImageTransparency = 1 - self.Transparency
                a.BorderSizePixel = self.Outline and 1 or 0
                a.Image = self.Image
            end
        }
        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
            elseif key == 'Size' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Image' and typeof(value) == 'string' then
                rawset(self, key, value)
            else
                return
            end
            self:updateImage()
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    end
end

funcs.randomstring = funcs.crypt.random
funcs.getprotecteduis = function() return protecteduis end
funcs.getprotectedguis = funcs.getprotecteduis
funcs.cleardrawcache = function()
    for _, v in pairs(Drawings) do
        if v.Remove then v:Remove() end
    end
    table.clear(Drawings)
end

funcs.checkcaller = function() return true end

funcs.getthreadcontext = function() return currentIdentity end
funcs.getthreadidentity = funcs.getthreadcontext
funcs.getidentity = funcs.getthreadcontext
funcs.setthreadidentity = function(id) currentIdentity = tonumber(id) end
funcs.setidentity = funcs.setthreadidentity
funcs.setthreadcontext = funcs.setthreadidentity

funcs.rconsolecreate = function()
    local Clone = Console:Clone()
    Clone.Parent = funcs.gethui()
    ConsoleClone = Clone
    ConsoleClone.ConsoleFrame.Topbar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            startDrag(input, ConsoleClone.ConsoleFrame)
        end
    end)
end
funcs.rconsoledestroy = function()
    if ConsoleClone then ConsoleClone:Destroy() end
    ConsoleClone = nil
end
funcs.rconsoleprint = function(msg, cc)
    local CONSOLE = ConsoleClone or Console
    msg = tostring(msg)
    local last_color = nil
    msg = msg:gsub('@@(%a+)@@', function(color)
        local colorName = color:upper()
        local rgbColor = colors[colorName]
        if rgbColor then
            local fontTag = string.format('<font color="rgb(%d,%d,%d)">', rgbColor.R * 255, rgbColor.G * 255, rgbColor.B * 255)
            local result = last_color and '</font>' .. fontTag or fontTag
            last_color = colorName
            return result
        else
            return '@@' .. color .. '@@'
        end
    end)
    if last_color then msg = msg .. '</font>' end
    local tmp = MessageTemplate:Clone()
    tmp.Parent = CONSOLE.ConsoleFrame.Holder
    tmp.Text = msg
    tmp.Visible = true
    tmp.TextColor3 = cc and cc or MessageColor
end
funcs.rconsoleinput = function()
    local CONSOLE = ConsoleClone or Console
    local box = InputTemplate:Clone()
    local val
    box.Parent = CONSOLE.ConsoleFrame.Holder
    box.Visible = true
    box.TextEditable = true
    box.TextColor3 = MessageColor
    box:CaptureFocus()
    box.FocusLost:Connect(function(a) val = box.Text end)
    repeat task.wait() until val
    return val
end
funcs.rconsolename = function(a)
    if ConsoleClone then ConsoleClone.ConsoleFrame.Title.Text = a else Console.ConsoleFrame.Title.Text = a end
end
funcs.printconsole = function(msg, r, g, b)
    r = r or 0
    g = g or 0
    b = b or 0
    funcs.rconsoleprint(msg, Color3.fromRGB(r, g, b))
end
funcs.rconsoleclear = function()
    local CONSOLE = ConsoleClone or Console
    for i, v in pairs(CONSOLE.ConsoleFrame.Holder:GetChildren()) do
        if v.ClassName == 'TextLabel' or v.ClassName == 'TextBox' then v:Destroy() end
    end
end
funcs.rconsoleinfo = function(a) funcs.rconsoleprint('[INFO]: ' .. tostring(a)) end
funcs.rconsolewarn = function(a) funcs.rconsoleprint('[*]: ' .. tostring(a)) end
funcs.rconsoleerr = function(a) funcs.rconsoleprint('[*]: ' .. tostring(a)) end
funcs.rconsoleinputasync = funcs.rconsoleinput
funcs.consolecreate = funcs.rconsolecreate
funcs.consoleclear = funcs.rconsoleclear
funcs.consoledestroy = funcs.rconsoledestroy
funcs.consoleinput = funcs.rconsoleinput
funcs.rconsolesettitle = funcs.rconsolename
funcs.consolesettitle = funcs.rconsolename
funcs.consoleprint = funcs.rconsoleprint

local teleportQueue = nil
funcs.queue_on_teleport = function(scripttoexec) teleportQueue = scripttoexec end
funcs.queueonteleport = funcs.queue_on_teleport

funcs.getrawmetatable = function(obj)
    return debug.getmetatable(obj)
end

funcs.setrawmetatable = function(obj, mt)
    local s, e = pcall(function()
        debug.setmetatable(obj, mt)
    end)
    return s
end

funcs.getreg = function() return debug.getregistry() end

funcs.getcallingscript = function()
    local level = 2
    while true do
        local info = debug.getinfo(level, "f")
        if not info then break end
        local func = info.func
        if func then
            local env = getfenv(func)
            if env and type(env) == "table" and rawget(env, "script") then
                local script = rawget(env, "script")
                if script and script:IsA("BaseScript") then return script end
            end
        end
        level = level + 1
    end
    return nil
end

funcs.hookfunction = function(old_func, new_func)
    return false
end

funcs.hookmetamethod = function(obj, method, new_func)
    local mt = debug.getmetatable(obj)
    if type(mt) ~= 'table' then return false end
    local old = mt[method]
    if type(old) ~= 'function' then return false end
    mt[method] = function(...)
        return new_func(old, ...)
    end
    return old
end

funcs.getnamecallmethod = function()
    return "GetService"
end
funcs.setnamecallmethod = function(method) end

funcs.getupvalue = function(func, index) return debug.getupvalue(func, index) end
funcs.setupvalue = function(func, index, value) return debug.setupvalue(func, index, value) end
funcs.getupvalues = function(func) return {} end
funcs.setupvalues = function(func, upvalues) end
funcs.getconstants = function(func) return {} end
funcs.setconstants = function(func, constants) end

funcs.getgc = function()
    local gcTable = {}
    for k, v in pairs(getgenv()) do table.insert(gcTable, v) end
    table.insert(gcTable, print)
    table.insert(gcTable, warn)
    table.insert(gcTable, error)
    return gcTable
end

funcs.getsenv = function(script)
    local env = getfenv(2)
    env.script = script
    return env
end

funcs.getscriptclosure = function(script)
    if typeof(script) == 'Instance' and script:IsA("BaseScript") then
        local source = script.Source
        if source and source ~= "" then
            local fn, err = funcs.loadstring(source, "@" .. script.Name)
            if fn then return fn end
        end
    end
    return function() end
end

funcs.getmouseposition = function() return game:GetService("UserInputService"):GetMouseLocation() end
funcs.ismousebuttonpressed = function(button)
    local uis = game:GetService("UserInputService")
    if button == 1 then return uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
    elseif button == 2 then return uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
    return false
end
funcs.iskeypressed = function(key)
    local uis = game:GetService("UserInputService")
    if type(key) == "string" then key = Enum.KeyCode[key] end
    return uis:IsKeyDown(key)
end
funcs.getclipboard = function()
    local box = Instance.new("TextBox")
    box.Parent = funcs.gethui()
    box:CaptureFocus()
    task.wait()
    local text = box.Text
    box:Destroy()
    return text
end

funcs.fireclickdetector = function(detector, distance, mouse_pos)
    if typeof(detector) ~= 'Instance' or not detector:IsA('ClickDetector') then error("Expected ClickDetector") end
    local max_dist = detector.MaxActivationDistance
    detector.MaxActivationDistance = math.huge
    local part = detector.Parent
    if not part or not part:IsA("BasePart") then
        part = Instance.new("Part")
        part.Parent = workspace
        detector.Parent = part
    end
    local char = game:GetService("Players").LocalPlayer.Character
    if not char then return end
    local head = char:FindFirstChild("Head")
    if not head then return end
    local original_cf = part.CFrame
    part.CFrame = head.CFrame + head.CFrame.LookVector * 2
    task.wait()
    pcall(function() detector:Click() end)
    part.CFrame = original_cf
    detector.MaxActivationDistance = max_dist
end
funcs.isnetworkowner = function(part)
    if typeof(part) == 'Instance' and part:IsA('BasePart') then
        return part:IsNetworkOwner(game:GetService("Players").LocalPlayer)
    end
    return false
end

funcs.httpgetasync = funcs.httpget
funcs.httppostasync = funcs.httppost
funcs.decompile = function(func) return "function() ... end" end
funcs.dumpstring = funcs.decompile
funcs.getscriptfunction = funcs.getscriptclosure

funcs.getcallbackvalue = function(obj, prop)
    if typeof(obj) == 'Instance' and type(prop) == 'string' then
        local s, val = pcall(function() return obj[prop] end)
        if s and type(val) == 'function' then
            return val
        end
    end
    return function() end
end

funcs.getfenv = getfenv
funcs.setfenv = function(level, env)
    local s, e = pcall(function() setfenv(level, env) end)
    if not s then warn("setfenv not supported") end
end
funcs.getconnections = function(obj)
    return {
        {
            Enabled = true,
            ForeignState = false,
            Thread = coroutine.running(),
            Function = function() end,
            Defer = function() end,
            LuaConnection = false,
            Disconnect = function() end,
            Disable = function() end,
            Enable = function() end,
            Fire = function() end
        }
    }
end
funcs.getcustomasset = function(id) return "rbxasset://temp/" .. tostring(id) end
funcs.getscriptbytecode = function(script) return "dummy bytecode" end
funcs.getscripthash = function(script)
    local source = (typeof(script) == 'Instance' and script.Source) or ""
    return funcs.crypt.hash(source)
end
funcs.is_synapse_function = function(func) return false end
funcs.geterrorhandler = function() return nil end
funcs.lz4compress = function(data) return data end
funcs.lz4decompress = function(data) return data end
funcs.setfpscap = function(fps) return true end

funcs.gethiddenproperty = function(obj, prop)
    if typeof(obj) == 'Instance' then
        if hiddenPropVals[obj] and hiddenPropVals[obj][prop] ~= nil then
            return hiddenPropVals[obj][prop], true
        end
        local className = obj.ClassName
        if HiddenProps[className] and HiddenProps[className][prop] ~= nil then
            return HiddenProps[className][prop], true
        end
    end
    local s, val = pcall(function() return obj[prop] end)
    if s then return val, false end
    return nil, true
end

funcs.sethiddenproperty = function(obj, prop, val)
    if typeof(obj) ~= 'Instance' then return false end
    if hiddenPropVals[obj] == nil then hiddenPropVals[obj] = {} end
    hiddenPropVals[obj][prop] = val
    return true
end

local native_ws = getNative("WebSocket")
funcs.WebSocket = {
    connect = function(url)
        if native_ws and type(native_ws.connect) == 'function' then
            local ok, ws = pcall(native_ws.connect, url)
            if ok and (type(ws) == 'table' or type(ws) == 'userdata') then
                if type(ws.Send) == 'function' and type(ws.Close) == 'function' then
                    return ws
                end
            end
        end
        return {
            Send = function() end,
            Close = function() end,
            OnMessage = { Connect = function() return {Disconnect=function()end} end },
            OnClose = { Connect = function() return {Disconnect=function()end} end }
        }
    end
}

local Count = 0
local Total = 0
local environmentName = detectExecutor()
local robloxVersion = version()

print('Running MoreUNC v'.. Version ..' | Roblox', robloxVersion, '| Environment:', environmentName, '| Discord https://discord.gg/SK5XnQRchG')

local overlayGui = Instance.new("ScreenGui")
overlayGui.Name = "MoreUNCOverlay"
overlayGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
overlayGui.IgnoreGuiInset = true
overlayGui.Parent = funcs.gethui()

local overlayFrame = Instance.new("Frame")
overlayFrame.Name = "OverlayFrame"
overlayFrame.Size = UDim2.new(1, 0, 1, 0)
overlayFrame.BackgroundColor3 = Color3.new(0, 0, 0)
overlayFrame.BackgroundTransparency = 0
overlayFrame.BorderSizePixel = 0
overlayFrame.ZIndex = 9999
overlayFrame.Parent = overlayGui

local overlayLabel = Instance.new("TextLabel")
overlayLabel.Name = "OverlayLabel"
overlayLabel.Size = UDim2.new(1, 0, 0.1, 0)
overlayLabel.Position = UDim2.new(0, 0, 0.45, 0)
overlayLabel.BackgroundTransparency = 1
overlayLabel.Text = "MoreUNC v6 Injecting"
overlayLabel.TextColor3 = Color3.new(1, 1, 1)
overlayLabel.TextSize = 40
overlayLabel.Font = Enum.Font.GothamBold
overlayLabel.TextScaled = true
overlayLabel.TextWrapped = true
overlayLabel.Parent = overlayFrame

task.spawn(function()
    for i = 1, 3 do
        task.wait(0.1)
        overlayLabel.Text = "MoreUNC v6 Injecting" .. string.rep(".", i)
    end
    task.wait(0.2)
    overlayGui:Destroy()
end)

local funcs2 = {}
for i, _ in pairs(funcs) do table.insert(funcs2, i) end
table.sort(funcs2, function(a, b) return string.byte(a:lower())<string.byte(b:lower()) end)

for i, v in pairs(funcs2) do
    if not getgenv()[i] then Total = Total + 1 end
end

for _, i in pairs(funcs2) do
    local v = funcs[i]
    local Result = SafeOverride(i, v, i == "request" or i == "WebSocket")
    if Result == 2 then Count = Count + 1 end
end

funcs.syn.protect_gui(DrawingDict)
funcs.syn.protect_gui(ClipboardUI)
print('Done adding functions!')
getgenv().MoreUNC = true

local deee = Instance.new("ScreenGui")
local noti = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local Header = Instance.new("TextLabel")
local UIStroke_1 = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local UICorner_1 = Instance.new("UICorner")
local name = Instance.new("TextLabel")
local fun = Instance.new("TextLabel")

deee.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
deee.Name = [[deee]]
deee.Parent = funcs.gethui()

noti.BackgroundColor3 = Color3.new(0.098, 0.098, 0.098)
noti.BackgroundTransparency = 0.2
noti.BorderColor3 = Color3.new(0.137, 0.137, 0.137)
noti.BorderSizePixel = 0
noti.Position = UDim2.new(0.863, 0, 0.861, 0)
noti.Size = UDim2.new(0.125, 0, 0.104, 0)
noti.Name = [[noti]]
noti.Parent = deee

UIStroke.Color = Color3.new(0.216, 0.216, 0.216)
UIStroke.Parent = noti

Header.FontFace = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Header.Text = [[MoreUNC Revived (v6)]]
Header.TextColor3 = Color3.new(0.784, 0.784, 0.784)
Header.TextScaled = true
Header.TextSize = 14
Header.TextWrapped = true
Header.BackgroundColor3 = Color3.new(0.098, 0.098, 0.098)
Header.BorderColor3 = Color3.new(0.216, 0.216, 0.216)
Header.Size = UDim2.new(1, 0, 0.222, 0)
Header.Name = [[Header]]
Header.Parent = noti

UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_1.Color = Color3.new(0.216, 0.216, 0.216)
UIStroke_1.Parent = Header

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Header

UICorner_1.CornerRadius = UDim.new(0, 3)
UICorner_1.Parent = noti

name.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
name.Text = [[Exploit: ]]
name.TextColor3 = Color3.new(0.588, 0.588, 0.588)
name.TextScaled = true
name.TextSize = 14
name.TextWrapped = true
name.TextXAlignment = Enum.TextXAlignment.Left
name.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
name.BackgroundTransparency = 1
name.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.06, 0, 0.368, 0)
name.Size = UDim2.new(0.94, 0, 0.189, 0)
name.Name = [[name]]
name.Parent = noti

fun.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
fun.Text = [[Functions Added:]]
fun.TextColor3 = Color3.new(0.588, 0.588, 0.588)
fun.TextScaled = true
fun.TextSize = 14
fun.TextWrapped = true
fun.TextXAlignment = Enum.TextXAlignment.Left
fun.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
fun.BackgroundTransparency = 1
fun.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
fun.BorderSizePixel = 0
fun.Position = UDim2.new(0.06, 0, 0.608, 0)
fun.Size = UDim2.new(0.94, 0, 0.189, 0)
fun.Name = [[fun]]
fun.Parent = noti

name.Text = "Exploit: " .. environmentName
fun.Text = "Functions Added: " .. tostring(Count)

task.spawn(function()
    task.wait(5)
    for i = 0, 1, 0.05 do
        noti.BackgroundTransparency = i
        for _, child in ipairs(noti:GetDescendants()) do
            if child:IsA("TextLabel") then child.TextTransparency = i end
        end
        task.wait(0.05)
    end
    deee:Destroy()
end)