local esp = false
local htc = Color3.fromRGB(255, 0, 0) -- esp color
local rainbow = false -- rainbow esp
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")
local ts = game:GetService("TweenService")
local aimbot = false
local aimkey = "E" -- key for aimbot
local aimpart = "Hitbox" -- part to aim for
local duration, alpha = 1, 0 -- duration
local smoothness = 0.25 -- smoothness of aim 
local wallbang = true
local maxDistance = 400
local nearestDistance = 401
local nearestPlayer = ""
local Camera = workspace.CurrentCamera
local dragging
local dragInput
local dragStart
local startPos
local lastMousePos
local lastGoalPos
local DRAG_SPEED = (15); -- // The speed of the UI darg.

function Lerp(a, b, m)
	return a + (b - a) * m
end;

local Design = Instance.new("ScreenGui")
local WelcomeOF = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local WelcomeIF = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Thanks = Instance.new("TextLabel")
local Start = Instance.new("TextLabel")
local IconFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local OuterFrame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local InnerFrame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local OuterTabFrame = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local espTab = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local aimTab = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local wepTab = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local misTab = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local espFrame = Instance.new("Frame")
local ToggleText = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local Frame = Instance.new("Frame")
local Background = Instance.new("ImageLabel")
local Background_2 = Instance.new("ImageLabel")
local RGB = Instance.new("ImageLabel")
local Marker = Instance.new("Frame")
local Preview = Instance.new("ImageLabel")
local Value = Instance.new("ImageLabel")
local Marker_2 = Instance.new("Frame")
local aimFrame = Instance.new("Frame")
local ToggleText_2 = Instance.new("TextLabel")
local UICorner_12 = Instance.new("UICorner")
local aimText = Instance.new("TextBox")
local UICorner_13 = Instance.new("UICorner")
local wepFrame = Instance.new("Frame")
local ToggleText_3 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local ImageButton_2 = Instance.new("ImageButton")
local ToggleText_4 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local ImageButton_3 = Instance.new("ImageButton")
local ToggleText_5 = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local ImageButton_4 = Instance.new("ImageButton")
local ToggleText_6 = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local ImageButton_5 = Instance.new("ImageButton")
local miscFrame = Instance.new("Frame")

--Properties:

Design.Name = "Design"
Design.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Design.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Design.DisplayOrder = 100

WelcomeOF.Name = "WelcomeOF"
WelcomeOF.Parent = Design
WelcomeOF.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
WelcomeOF.Position = UDim2.new(0.325309992, 0, 0.386196762, 0)
WelcomeOF.Size = UDim2.new(0, 441, 0, 170)
WelcomeOF.Visible = true

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = WelcomeOF

WelcomeIF.Name = "WelcomeIF"
WelcomeIF.Parent = WelcomeOF
WelcomeIF.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
WelcomeIF.Position = UDim2.new(0.0202101059, 0, 0.0391379297, 0)
WelcomeIF.Size = UDim2.new(0, 422, 0, 155)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = WelcomeIF

Thanks.Name = "Thanks"
Thanks.Parent = WelcomeIF
Thanks.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Thanks.BackgroundTransparency = 1.000
Thanks.Size = UDim2.new(0, 422, 0, 113)
Thanks.Font = Enum.Font.SourceSansBold
Thanks.Text = "Thanks for using LSH "
Thanks.TextColor3 = Color3.fromRGB(255, 255, 255)
Thanks.TextSize = 50.000
Thanks.TextStrokeTransparency = 0.000
Thanks.TextWrapped = true

Start.Name = "Start"
Start.Parent = WelcomeIF
Start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Start.BackgroundTransparency = 1.000
Start.Position = UDim2.new(0, 0, 0.322580636, 0)
Start.Size = UDim2.new(0, 422, 0, 113)
Start.Font = Enum.Font.SourceSansBold
Start.Text = "Script will start in (5)"
Start.TextColor3 = Color3.fromRGB(255, 255, 255)
Start.TextSize = 25.000
Start.TextStrokeTransparency = 0.000
Start.TextWrapped = true
Start.Visible = true

local i = 5
while i > 0 do
    wait(1)
    i = i - 1
    Start.Text = "Script will start in".. "(".. i.. ")"
end
WelcomeOF.Visible = false

IconFrame.Name = "IconFrame"
IconFrame.Parent = Design
IconFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
IconFrame.Position = UDim2.new(0.448577672, 0, 0.437591791, 0)
IconFrame.Size = UDim2.new(0, 100, 0, 100)
IconFrame.BackGroundTransparency = 1

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = IconFrame

ImageLabel.Parent = IconFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "http://www.roblox.com/asset/?id=10188534088"

local imgc = Instance.new("UICorner")
imgc.CornerRadius = UDim.new(0, 10)
imgc.Parent = ImageLabel

OuterFrame.Name = "OuterFrame"
OuterFrame.Parent = ImageLabel
OuterFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
OuterFrame.Position = UDim2.new(0.00666666683, 0, 0.0161527172, 0)
OuterFrame.Size = UDim2.new(0, 432, 0, 237)
OuterFrame.Visible = false

function Update(dt)
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		OuterFrame.Position = UDim2.new(startPos.X.Scale, Lerp(OuterFrame.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(OuterFrame.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - uis:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	OuterFrame.Position = UDim2.new(startPos.X.Scale, Lerp(OuterFrame.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(OuterFrame.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
end;

function sizescale(gui, goal, ttc)
    wait(ttc)
    gui:TweenSize(
        goal,
        Enum.EasingDirection.In,
        Enum.EasingStyle.Linear,
        1.5,
        true
    )
end

IconFrame:TweenPosition(
    OuterFrame.Position,
    Enum.EasingDirection.In,
    Enum.EasingStyle.Linear,
    1.5,
    true
)

sizescale(ImageLabel, OuterFrame.Size, 1.5)
wait(2)

local tween = ts:Create(ImageLabel, TweenInfo.new(1), {Transparency = 1, ImageTransparency = 1})
tween:Play()
OuterFrame.Visible = true

UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = OuterFrame

InnerFrame.Name = "InnerFrame"
InnerFrame.Parent = OuterFrame
InnerFrame.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
InnerFrame.Position = UDim2.new(0.020555567, 0, 0.0414692052, 0)
InnerFrame.Size = UDim2.new(0, 413, 0, 217)

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = InnerFrame

OuterTabFrame.Name = "OuterTabFrame"
OuterTabFrame.Parent = InnerFrame
OuterTabFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
OuterTabFrame.BorderSizePixel = 0
OuterTabFrame.Position = UDim2.new(-0.0234732628, 0, -0.0467246175, 0)
OuterTabFrame.Size = UDim2.new(0, 98, 0, 237)

UICorner_6.CornerRadius = UDim.new(0, 10)
UICorner_6.Parent = OuterTabFrame

ScrollingFrame.Parent = OuterTabFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.00131238461, 0)
ScrollingFrame.Size = UDim2.new(0, 100, 0, 236)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1.10000002, 0)
ScrollingFrame.ScrollBarThickness = 5
ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

espTab.Name = "espTab"
espTab.Parent = ScrollingFrame
espTab.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
espTab.Position = UDim2.new(0.0900000036, 0, 0.0349756479, 0)
espTab.Size = UDim2.new(0, 83, 0, 50)
espTab.Font = Enum.Font.SourceSans
espTab.Text = "esp"
espTab.TextColor3 = Color3.fromRGB(255, 255, 255)
espTab.TextSize = 25.000
espTab.TextWrapped = true

espTab.MouseButton1Click:Connect(function()
    espFrame.Visible = true
    aimFrame.Visible = false
    wepFrame.Visible = false
    miscFrame.Visible = false
end)

UICorner_7.CornerRadius = UDim.new(0, 10)
UICorner_7.Parent = espTab

aimTab.Name = "aimTab"
aimTab.Parent = ScrollingFrame
aimTab.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
aimTab.Position = UDim2.new(0.0900000036, 0, 0.254999995, 0)
aimTab.Size = UDim2.new(0, 83, 0, 50)
aimTab.Font = Enum.Font.SourceSans
aimTab.Text = "aim"
aimTab.TextColor3 = Color3.fromRGB(255, 255, 255)
aimTab.TextSize = 20.000
aimTab.TextWrapped = true

aimTab.MouseButton1Click:Connect(function()
    espFrame.Visible = false
    aimFrame.Visible = true
    wepFrame.Visible = false
    miscFrame.Visible = false
end)

UICorner_8.CornerRadius = UDim.new(0, 10)
UICorner_8.Parent = aimTab

wepTab.Name = "wepTab"
wepTab.Parent = ScrollingFrame
wepTab.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
wepTab.Position = UDim2.new(0.0900000036, 0, 0.476000011, 0)
wepTab.Size = UDim2.new(0, 83, 0, 50)
wepTab.Font = Enum.Font.SourceSans
wepTab.Text = "weapon"
wepTab.TextColor3 = Color3.fromRGB(255, 255, 255)
wepTab.TextSize = 20.000
wepTab.TextWrapped = true

wepTab.MouseButton1Click:Connect(function()
    espFrame.Visible = false
    aimFrame.Visible = false
    wepFrame.Visible = true
    miscFrame.Visible = false
end)

UICorner_9.CornerRadius = UDim.new(0, 10)
UICorner_9.Parent = wepTab

misTab.Name = "misTab"
misTab.Parent = ScrollingFrame
misTab.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
misTab.Position = UDim2.new(0.0900000036, 0, 0.699999988, 0)
misTab.Size = UDim2.new(0, 83, 0, 50)
misTab.Font = Enum.Font.SourceSans
misTab.Text = "misc"
misTab.TextColor3 = Color3.fromRGB(255, 255, 255)
misTab.TextSize = 23.000
misTab.TextWrapped = true

misTab.MouseButton1Click:Connect(function()
    espFrame.Visible = false
    aimFrame.Visible = false
    wepFrame.Visible = false
    miscFrame.Visible = true
end)

UICorner_10.CornerRadius = UDim.new(0, 10)
UICorner_10.Parent = misTab

espFrame.Name = "espFrame"
espFrame.Parent = InnerFrame
espFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
espFrame.BackgroundTransparency = 1.000
espFrame.Position = UDim2.new(0.213075057, 0, 0, 0)
espFrame.Size = UDim2.new(0, 325, 0, 217)
espFrame.Visible = true

ToggleText.Name = "ToggleText"
ToggleText.Parent = espFrame
ToggleText.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ToggleText.BorderSizePixel = 0
ToggleText.Position = UDim2.new(0.0215384606, 0, 0.0276497696, 0)
ToggleText.Size = UDim2.new(0, 312, 0, 44)
ToggleText.Font = Enum.Font.SourceSansSemibold
ToggleText.Text = "      esp toggle"
ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleText.TextSize = 25.000

UICorner_11.CornerRadius = UDim.new(0, 10)
UICorner_11.Parent = ToggleText

ImageButton.Parent = ToggleText
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.0192307718, 0, 0.11363636, 0)
ImageButton.Size = UDim2.new(0, 36, 0, 33)
ImageButton.Image = "http://www.roblox.com/asset/?id=257125767"

ToggleText.MouseButton1Click:Connect(function()
    if ImageButton.Image == "http://www.roblox.com/asset/?id=257125767" then
        ImageButton.Image = "http://www.roblox.com/asset/?id=257125764"
        esp = true
        loopfix()
        print("fixing")
    else
        ImageButton.Image = "http://www.roblox.com/asset/?id=257125767"
        esp = false
        fixesp()
        print("fixing")
    end
end)

Frame.Parent = espFrame
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(56, 56, 56)
Frame.Position = UDim2.new(0.448258579, 0, 0.606461108, 0)
Frame.Size = UDim2.new(0.146517143, 0, 0.290381789, 0)
Frame.SizeConstraint = Enum.SizeConstraint.RelativeXX

Background.Name = "Background"
Background.Parent = Frame
Background.AnchorPoint = Vector2.new(0.5, 0.5)
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.BorderColor3 = Color3.fromRGB(56, 56, 56)
Background.Position = UDim2.new(0.85054177, 0, 0.525133133, 0)
Background.Size = UDim2.new(6.27392769, 0, 1.44794536, 0)
Background.ZIndex = 4
Background.Image = "rbxassetid://399416860"
Background.ImageColor3 = Color3.fromRGB(0, 0, 0)
Background.ScaleType = Enum.ScaleType.Slice
Background.SliceCenter = Rect.new(10, 10, 90, 90)

Background_2.Name = "Background"
Background_2.Parent = Background
Background_2.AnchorPoint = Vector2.new(0.5, 0.5)
Background_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background_2.BackgroundTransparency = 1.000
Background_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Background_2.Size = UDim2.new(1, 4, 1, 4)
Background_2.ZIndex = 3
Background_2.Image = "rbxassetid://399416860"
Background_2.ImageColor3 = Color3.fromRGB(56, 56, 56)
Background_2.ScaleType = Enum.ScaleType.Slice
Background_2.SliceCenter = Rect.new(10, 10, 90, 90)

RGB.Name = "RGB"
RGB.Parent = Frame
RGB.AnchorPoint = Vector2.new(0.5, 0)
RGB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RGB.BorderColor3 = Color3.fromRGB(40, 40, 40)
RGB.BorderSizePixel = 0
RGB.Position = UDim2.new(-0.777044117, 0, -0.117736667, 0)
RGB.Size = UDim2.new(2.52990937, 0, 1.27438939, 0)
RGB.ZIndex = 4
RGB.Image = "rbxassetid://1433361550"
RGB.SliceCenter = Rect.new(10, 10, 90, 90)

Marker.Name = "Marker"
Marker.Parent = RGB
Marker.AnchorPoint = Vector2.new(0.5, 0.5)
Marker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Marker.BorderColor3 = Color3.fromRGB(0, 0, 0)
Marker.BorderSizePixel = 2
Marker.Position = UDim2.new(0.5, 0, 1, 0)
Marker.Size = UDim2.new(0, 4, 0, 4)
Marker.ZIndex = 5

Preview.Name = "Preview"
Preview.Parent = Frame
Preview.AnchorPoint = Vector2.new(0.5, 0)
Preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Preview.BorderColor3 = Color3.fromRGB(40, 40, 40)
Preview.BorderSizePixel = 2
Preview.Position = UDim2.new(2.41626382, 0, 0.214069024, 0)
Preview.Size = UDim2.new(1.43788719, 0, 0.730661631, 0)
Preview.ZIndex = 4
Preview.SliceCenter = Rect.new(10, 10, 90, 90)

Value.Name = "Value"
Value.Parent = Frame
Value.AnchorPoint = Vector2.new(0.5, 0)
Value.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Value.BorderColor3 = Color3.fromRGB(40, 40, 40)
Value.BorderSizePixel = 2
Value.Position = UDim2.new(0.876733124, 0, 0.299040735, 0)
Value.Size = UDim2.new(0.103145055, 0, 0.299545407, 0)
Value.Visible = false
Value.ZIndex = 4
Value.Image = "rbxassetid://359311684"
Value.SliceCenter = Rect.new(10, 10, 90, 90)

Marker_2.Name = "Marker"
Marker_2.Parent = Value
Marker_2.AnchorPoint = Vector2.new(0.5, 0.5)
Marker_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Marker_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Marker_2.BorderSizePixel = 2
Marker_2.Position = UDim2.new(0.5, 0, 0, 0)
Marker_2.Size = UDim2.new(1, 4, 0, 2)
Marker_2.ZIndex = 5

aimFrame.Name = "aimFrame"
aimFrame.Parent = InnerFrame
aimFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
aimFrame.BackgroundTransparency = 1.000
aimFrame.Position = UDim2.new(0.213075057, 0, 0, 0)
aimFrame.Size = UDim2.new(0, 325, 0, 217)
aimFrame.Visible = false
aimFrame.Visible = false

ToggleText_2.Name = "ToggleText"
ToggleText_2.Parent = aimFrame
ToggleText_2.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ToggleText_2.BorderSizePixel = 0
ToggleText_2.Position = UDim2.new(0.0215384606, 0, 0.0276497696, 0)
ToggleText_2.Size = UDim2.new(0, 312, 0, 44)
ToggleText_2.Font = Enum.Font.SourceSansSemibold
ToggleText_2.Text = "aimbot key            "
ToggleText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleText_2.TextSize = 25.000

UICorner_12.CornerRadius = UDim.new(0, 10)
UICorner_12.Parent = ToggleText_2

aimText.Name = "aimText"
aimText.Parent = ToggleText_2
aimText.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
aimText.BorderSizePixel = 0
aimText.Position = UDim2.new(0.865384638, 0, 0.159090891, 0)
aimText.Size = UDim2.new(0, 30, 0, 30)
aimText.Font = Enum.Font.SourceSansBold
aimText.Text = "E"
aimText.TextColor3 = Color3.fromRGB(255, 255, 255)
aimText.TextSize = 25.000

spawn(function()
    while wait() do
        aimkey = string.upper(aimText.Text)
        aimText.Text = string.upper(aimText.Text)
    end
end)

UICorner_13.CornerRadius = UDim.new(0, 10)
UICorner_13.Parent = aimText

wepFrame.Name = "wepFrame"
wepFrame.Parent = InnerFrame
wepFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
wepFrame.BackgroundTransparency = 1.000
wepFrame.Position = UDim2.new(0.213075057, 0, 0, 0)
wepFrame.Size = UDim2.new(0, 325, 0, 217)
wepFrame.Visible = false

ToggleText_3.Name = "ToggleText"
ToggleText_3.Parent = wepFrame
ToggleText_3.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ToggleText_3.BorderSizePixel = 0
ToggleText_3.Position = UDim2.new(0.0215384606, 0, 0.0276497696, 0)
ToggleText_3.Size = UDim2.new(0, 312, 0, 44)
ToggleText_3.Font = Enum.Font.SourceSansSemibold
ToggleText_3.Text = "               fire rate"
ToggleText_3.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleText_3.TextSize = 25.000

UICorner_14.CornerRadius = UDim.new(0, 10)
UICorner_14.Parent = ToggleText_3

ImageButton_2.Parent = ToggleText_3
ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_2.BackgroundTransparency = 1.000
ImageButton_2.Position = UDim2.new(0.0192307718, 0, 0.11363636, 0)
ImageButton_2.Size = UDim2.new(0, 36, 0, 33)
ImageButton_2.Image = "http://www.roblox.com/asset/?id=257125767"

ToggleText_3.MouseButton1Click:Connect(function()
    if ImageButton_2.Image == "http://www.roblox.com/asset/?id=257125767" then
        ImageButton_2.Image = "http://www.roblox.com/asset/?id=257125764"
        for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            for _, v2 in pairs(v:GetChildren()) do
                if v2.Name == "FireRate" then
                    v2.Value = v2.Value * 0.2
                elseif v2.Name == "Auto" then
                    v2.Value = true
                elseif v2.Name == "StoredAmmo" or v2.Name == "Ammo" then
                    v2.Value = v2.Value * 2
                elseif v2.Name == "Range" then
                    v2.Value = v2.Value * 5
                end    
            end
        end
    else
        ImageButton_2.Image = "http://www.roblox.com/asset/?id=257125767"
        for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            for _, v2 in pairs(v:GetChildren()) do
                if v2.Name == "FireRate" then
                    v2.Value = v2.Value * 5
                elseif v2.Name == "StoredAmmo" or v2.Name == "StoredAmmo" then
                    v2.Value = v2.Value / 3
                elseif v2.Name == "Range" then
                    v2.Value = v2.Value / 5
                end    
            end
        end
    end
end)

ToggleText_4.Name = "ToggleText"
ToggleText_4.Parent = wepFrame
ToggleText_4.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ToggleText_4.BorderSizePixel = 0
ToggleText_4.Position = UDim2.new(0.0215384606, 0, 0.271889389, 0)
ToggleText_4.Size = UDim2.new(0, 312, 0, 44)
ToggleText_4.Font = Enum.Font.SourceSansSemibold
ToggleText_4.Text = "                   no spread"
ToggleText_4.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleText_4.TextSize = 25.000

UICorner_15.CornerRadius = UDim.new(0, 10)
UICorner_15.Parent = ToggleText_4

ImageButton_3.Parent = ToggleText_4
ImageButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_3.BackgroundTransparency = 1.000
ImageButton_3.Position = UDim2.new(0.0192307718, 0, 0.11363636, 0)
ImageButton_3.Size = UDim2.new(0, 36, 0, 33)
ImageButton_3.Image = "http://www.roblox.com/asset/?id=257125767"

local guns = {
    ["ogSpread"] = {
        
    }
}

for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
    for _, v2 in pairs(v:GetChildren()) do
        if v2.Name == "Spread" or v2.Name == "MaxSpread" then
            table.insert(guns["ogSpread"], {Name = v.Name, Spread = v2.Value})
            v2.Value = 0
        end    
    end
end

ToggleText_4.MouseButton1Click:Connect(function()
    if ImageButton_3.Image == "http://www.roblox.com/asset/?id=257125767" then
        ImageButton_3.Image = "http://www.roblox.com/asset/?id=257125764"
        for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            for _, v2 in pairs(v:GetChildren()) do
                if v2.Name == "Spread" or v2.Name == "MaxSpread" then
                    v2.Value = 0
                end    
            end
        end
    else
        ImageButton_3.Image = "http://www.roblox.com/asset/?id=257125767"
        for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            for _, v2 in pairs(v:GetChildren()) do
                if v2.Name == "Spread" or v2.Name == "MaxSpread" then
                    for i, v3 in pairs(guns["ogSpread"]) do
                        if v3["Name"] == v.Name then
                            v2.Value = v3["Spread"]
                        end
                    end
                end    
            end
        end
    end
end)

ToggleText_5.Name = "ToggleText"
ToggleText_5.Parent = wepFrame
ToggleText_5.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ToggleText_5.BorderSizePixel = 0
ToggleText_5.Position = UDim2.new(0.0215384606, 0, 0.525345623, 0)
ToggleText_5.Size = UDim2.new(0, 312, 0, 44)
ToggleText_5.Font = Enum.Font.SourceSansSemibold
ToggleText_5.Text = "                 no recoil"
ToggleText_5.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleText_5.TextSize = 25.000

UICorner_16.CornerRadius = UDim.new(0, 10)
UICorner_16.Parent = ToggleText_5

ImageButton_4.Parent = ToggleText_5
ImageButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_4.BackgroundTransparency = 1.000
ImageButton_4.Position = UDim2.new(0.0192307718, 0, 0.11363636, 0)
ImageButton_4.Size = UDim2.new(0, 36, 0, 33)
ImageButton_4.Image = "http://www.roblox.com/asset/?id=257125767"

local guns = {
    ["ogRecoil"] = {
        
    }
}

for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
    for _, v2 in pairs(v:GetChildren()) do
        if v2.Name == "RecoilControl" then
            table.insert(guns["ogRecoil"], {Name = v.Name, Recoil = v2.Value})
        end    
    end
end

ToggleText_5.MouseButton1Click:Connect(function()
    if ImageButton_4.Image == "http://www.roblox.com/asset/?id=257125767" then
        ImageButton_4.Image = "http://www.roblox.com/asset/?id=257125764"
        for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            for _, v2 in pairs(v:GetChildren()) do
                if v2.Name == "RecoilControl" then
                    v2.Value = 0
                end    
            end
        end
    else
        ImageButton_4.Image = "http://www.roblox.com/asset/?id=257125767"
        for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            for _, v2 in pairs(v:GetChildren()) do
                if v2.Name == "RecoilControl" then
                    for _, v3 in pairs(guns["ogRecoil"]) do
                        if v3["Name"] == v.Name then
                            v2.Value = v3["Recoil"]
                        end
                    end
                end    
            end
        end
    end
end)

ToggleText_6.Name = "ToggleText"
ToggleText_6.Parent = wepFrame
ToggleText_6.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ToggleText_6.BorderSizePixel = 0
ToggleText_6.Position = UDim2.new(0.0219999999, 0, 0.774999976, 0)
ToggleText_6.Size = UDim2.new(0, 312, 0, 44)
ToggleText_6.Font = Enum.Font.SourceSansSemibold
ToggleText_6.Text = "                no slow"
ToggleText_6.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleText_6.TextSize = 25.000

UICorner_17.CornerRadius = UDim.new(0, 10)
UICorner_17.Parent = ToggleText_6

ImageButton_5.Parent = ToggleText_6
ImageButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_5.BackgroundTransparency = 1.000
ImageButton_5.Position = UDim2.new(0.0192307718, 0, 0.11363636, 0)
ImageButton_5.Size = UDim2.new(0, 36, 0, 33)
ImageButton_5.Image = "http://www.roblox.com/asset/?id=257125767"

local guns = {
    ["ogSpeed"] = {
        
    }
}

for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
    for _, v2 in pairs(v:GetChildren()) do
        if v2.Name == "Speed%" then
            table.insert(guns["ogSpeed"], {Name = v.Name, Speed = v2.Value})
            v2.Value = -25
        end    
    end
end

ToggleText_6.MouseButton1Click:Connect(function()
    if ImageButton_5.Image == "http://www.roblox.com/asset/?id=257125767" then
        ImageButton_5.Image = "http://www.roblox.com/asset/?id=257125764"
        for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            for _, v2 in pairs(v:GetChildren()) do
                if v2.Name == "Speed%" then
                    v2.Value = -25
                end    
            end
        end
    else
        ImageButton_5.Image = "http://www.roblox.com/asset/?id=257125767"
        for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            for _, v2 in pairs(v:GetChildren()) do
                if v2.Name == "Speed%" then
                    for i, v3 in pairs(guns["ogSpeed"]) do
                        if v3["Name"] == v.Name then
                            v2.Value = v3["Speed"]
                        end
                    end
                end    
            end
        end
    end
end)

miscFrame.Name = "miscFrame"
miscFrame.Parent = InnerFrame
miscFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
miscFrame.BackgroundTransparency = 1.000
miscFrame.Position = UDim2.new(0.213075057, 0, 0, 0)
miscFrame.Size = UDim2.new(0, 325, 0, 217)
miscFrame.Visible = false

-- Scripts:

local function QPTCRJP_fake_script() -- Frame.ColorMain 
    spawn(function()
    	local script = Instance.new('LocalScript', Frame)
    
    	local player = game.Players.LocalPlayer
    	local mouse = player:GetMouse()
    	
    	local rgb = script.Parent:WaitForChild("RGB")
    	local value = script.Parent:WaitForChild("Value")
    	local preview = script.Parent:WaitForChild("Preview")
    	
    	local selectedColor = Color3.fromHSV(1,1,1)
    	local colorData = {1,1,1}
    	
    	local mouse1down = false
    	
    	local function setColor(hue,sat,val)
    		colorData = {hue or colorData[1],sat or colorData[2],val or colorData[3]}
    		selectedColor = Color3.fromHSV(colorData[1],colorData[2],colorData[3])
    		preview.BackgroundColor3 = selectedColor
    		htc = Color3.fromHSV(colorData[1],colorData[2],1)
    		value.ImageColor3 = Color3.fromHSV(colorData[1],colorData[2],1)
    	end
    	
    	local function inBounds(frame)
    		local x,y = mouse.X - frame.AbsolutePosition.X,mouse.Y - frame.AbsolutePosition.Y
    		local maxX,maxY = frame.AbsoluteSize.X,frame.AbsoluteSize.Y
    		if x >= 0 and y >= 0 and x <= maxX and y <= maxY then
    			return x/maxX,y/maxY
    		end
    	end
    	
    	local function updateRGB()
    		if mouse1Down then
    			local x,y = inBounds(rgb)
    			if x and y then
    				rgb:WaitForChild("Marker").Position = UDim2.new(x,0,y,0)
    				setColor(1 - x,1 - y)
    			end
    			
    			local x,y = inBounds(value)
    			if x and y then
    				value:WaitForChild("Marker").Position = UDim2.new(0.5,0,y,0)
    				setColor(nil,nil,1 - y)
    			end
    		end
    	end
    	
    	mouse.Move:connect(updateRGB)
    	
    	mouse.Button1Down:connect(function()mouse1Down = true end)
    	mouse.Button1Up:connect(function()mouse1Down = false end)
	end)
end
coroutine.wrap(QPTCRJP_fake_script)()



OuterFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = OuterFrame.Position
		lastMousePos = uis:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

OuterFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

rs.Heartbeat:Connect(Update)


function fixesp()
    spawn(function()
        for _, plr in pairs(game.Players:GetPlayers()) do --check if any players already have esp
            local chr = plr.Character or plr.CharacterAdded:Wait()
            local hb = chr.Hitbox or chr:WaitForChild("Hitbox")
            local hb2 = game.Players.LocalPlayer.Character.Hitbox or game.Players.LocalPlayer.Character:WaitForChild("Hitbox")
            if not esp then
                if chr:FindFirstChild("ht") and chr:FindFirstChild("np") then
                    chr:FindFirstChild("ht"):Destroy()
                    chr:FindFirstChild("np"):Destroy()
                end                                
                
                if chr:FindFirstChild("ht") and chr:FindFirstChild("np") and plr.Team ~= game.Players.LocalPlayer.Team and hb and hb2 then
                    local htclone = chr:FindFirstChild("ht"):Clone()
                    htclone.Parent = chr:FindFirstChild("ht").Parent
                    htclone.Name = "ht2"
                    
                    local npclone = chr:FindFirstChild("np"):Clone()
                    npclone.Parent = chr:FindFirstChild("np").Parent
                    npclone.Name = "np2"
        
                    chr:FindFirstChild("ht"):Destroy()
                    chr:FindFirstChild("np"):Destroy()
                    
                elseif plr.Team == game.Players.LocalPlayer.Team and chr:FindFirstChild("ht") and hb and hb2 then
                    local htclone = chr:FindFirstChild("ht"):Clone()
                    htclone.Parent = chr:FindFirstChild("ht").Parent
                    htclone.Name = "ht2"
                    
                    local npclone = chr:FindFirstChild("np"):Clone()
                    npclone.Parent = chr:FindFirstChild("np").Parent
                    npclone.Name = "np2"
        
                    chr:FindFirstChild("ht"):Destroy()
                    chr:FindFirstChild("np"):Destroy()
                    
                elseif chr:FindFirstChild("ht") and plr.Team ~= Team and hb and hb2 then -- if they are on enemie team and have esp
                    chr:FindFirstChild("ht").FillColor = htc
                    chr:FindFirstChild("np").Transparency = 1
                    chr:FindFirstChild("np").bg.tl.Text = plr.Name.. " | ".. math.floor((hb.Position - hb2.Position).magnitude)
                    chr:FindFirstChild("np").bg.tl.TextColor3 = htc    
                    
                end
            end
        end
    end)
end

function loopfix()
    spawn(function()
        while esp do
            wait(1)
            espify()
            fixesp()
        end
    end)
end

function espify()
    spawn(function()
        while esp do
            wait(0.2)
            local Team = game.Players.LocalPlayer.Team 
            for _, plr in pairs(game.Players:GetPlayers()) do -- go through every player
                local chr = plr.Character or plr.CharacterAdded:Wait()
                local hb = chr.Hitbox or chr:WaitForChild("Hitbox")
                local hb2 = game.Players.LocalPlayer.Character.Hitbox or game.Players.LocalPlayer.Character:WaitForChild("Hitbox")
                if plr.Team ~= Team and not chr:FindFirstChild("ht") and hb and hb2 then -- check if the player is not on your team and doesn't have esp
                   
                    if not rainbow then
                        local ht = Instance.new("Highlight") -- hightlight the player part
                        ht.Parent = chr
                        ht.Name = "ht"
                        
                        local np = Instance.new("Part")
                        np.Parent = plr.Character
                        np.Name = "np"
                        np.CanCollide = false
                        np.Anchored = true
                        np.Transparency = 1
                        np.CFrame = hb.CFrame * CFrame.new(3.5, 0, 0)
                        
                        local bg = Instance.new("BillboardGui")
                        bg.Parent = np
                        bg.Name = "bg"
                        bg.Size = UDim2.new(4, 0, 1, 0)
                        bg.AlwaysOnTop = true
                        bg.ResetOnSpawn = false
                        
                        local tl = Instance.new("TextLabel")
                        tl.Parent = bg
                        tl.Name = "tl"
                        tl.Size = UDim2.new(1, 0, 1, 0)
                        tl.TextScaled = true
                        tl.Font = "SourceSansSemibold"
                        tl.BackgroundTransparency = 1
                        tl.TextColor3 = htc
                        tl.Text = plr.Name.. " | ".. math.floor((hb.Position - hb2.Position).magnitude)
                        
                        local weld = Instance.new("Weld")
                        weld.Part0 = hb
                        weld.C0 = hb.CFrame:Inverse()
                        weld.Part1 = np
                        weld.C1 = np.CFrame:Inverse()
                        weld.Parent = np
                        np.Anchored = false
                    end
                    
                elseif chr:FindFirstChild("ht") and plr.Team ~= Team and hb and hb2 then -- if they are on enemie team and have esp
                    chr:FindFirstChild("ht").FillColor = htc
                    chr:FindFirstChild("np").Transparency = 1
                    chr:FindFirstChild("np").bg.tl.Text = plr.Name.. " | ".. math.floor((hb.Position - hb2.Position).magnitude)
                    chr:FindFirstChild("np").bg.tl.TextColor3 = htc 
                
                elseif chr:FindFirstChild("ht") and plr.Team == Team then
                    chr:FindFirstChild("ht"):Destroy()
                    chr:FindFirstChild("np"):Destroy()
                    
                end
                
                if chr:FindFirstChild("ht2") and chr:FindFirstChild("np2") then
                    chr:FindFirstChild("ht2"):Destroy()
                    chr:FindFirstChild("np2"):Destroy()
                end
            end
        end
    end)
end

local function IsKeyDown()
	return uis:IsKeyDown(Enum.KeyCode[aimkey])
end

function updaim()
    spawn(function()
        if not aimbot then return end
        while aimbot do
            wait(0.01)
            if not aimbot then return end
            local nearestDistance = 401
            local nearestPlayer = ""
            local Team = game.Players.LocalPlayer.Team
            for _, plr in pairs(game.Players:GetChildren()) do
                if plr.Name ~= game.Players.LocalPlayer.Name and plr.Team ~= Team and plr.Character:FindFirstChild("Hitbox") then
                    local dist = math.floor((plr.Character.Hitbox.Position - game.Players.LocalPlayer.Character.Hitbox.Position).magnitude)
                    if dist < nearestDistance and dist <= maxDistance then
                        nearestPlayer = plr.Name
                        nearestDistance = dist
                    end
                end
            end
            if game.Players[nearestPlayer].Character:FindFirstChild("Hitbox") and Camera and game.Players.LocalPlayer.Character:FindFirstChild("Hitbox") and game.Players[nearestPlayer].Character:FindFirstChild("HeadHB").Position then
            	Camera.CameraType = Enum.CameraType.Scriptable
            	while alpha < 1 and aimbot do
               	    if math.floor((game.Players[nearestPlayer].Character.Hitbox.Position - game.Players.LocalPlayer.Character.Hitbox.Position).magnitude) > 400 or not aimbot then
            	        updaim()
            	        print("Reseting aim")
            	        alpha = 0
            	        return
               	    end
            	    Camera.CFrame = Camera.CFrame:lerp(CFrame.new(Camera.CFrame.Position, game.Players[nearestPlayer].Character[aimpart].Position), smoothness)
            	    alpha = alpha + (wait() / duration)
            	end
            	alpha = 0
            end
        end
    end)
end

updaim()

uis.InputBegan:Connect(function(input, gameProcessedEvent)
    if uis:IsKeyDown(Enum.KeyCode[aimkey]) then
        print("Aimbot enabled")
		aimbot = true
		updaim()
    else
        print("Aimbot disabled")
		aimbot = false
		updaim()
	end
end)

uis.InputEnded:Connect(function(input, gameProcessedEvent)
    if input == Enum.KeyCode[aimkey] then
        print("Aimbot disabled")
		aimbot = false
		updaim()
	end
end)
