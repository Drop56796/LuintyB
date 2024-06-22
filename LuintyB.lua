local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()


library.rank = "developer"
local Wm = library:Watermark("LuintyB | v" .. library.version ..  " | " .. library:GetUsername() .. " | rank: " .. library.rank)
local FpsWm = Wm:AddWatermark("fps: " .. library.fps)
coroutine.wrap(function()
    while wait(.75) do
        FpsWm:Text("fps: " .. library.fps)
    end
end)()


local Notif = library:InitNotifications()

local LoadingXSX = Notif:Notify("LuintyB is loading...", 5, "information") 

library.title = "LuintyB Welcome back {Doors)"

library:Introduction()
wait(1)
local Init = library:Init()

local Tab1 = Init:NewTab("Main")

local Section1 = Tab1:NewSection("Hub")

local Label1 = Tab1:NewLabel("hub", "left")--"left", "center", "right"

local Button1 = Tab1:NewButton("highlight", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4LDKiJ5a"))()
end)

local Button2 = Tab1:NewButton("Key esp", function()
    local ESP = {} -- Table to hold our ESP functions and data

-- Function to create a BillboardGui for ESP
function ESP:CreateESP(object)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "key"
    billboardGui.Adornee = object
    billboardGui.Size = UDim2.new(0, 100, 0, 50)
    billboardGui.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = billboardGui
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = object.Name
    textLabel.TextColor3 = Color3.new(0, 1, 0) -- Green color
    textLabel.TextStrokeTransparency = 0.5

    billboardGui.Parent = object
end

-- Function to find objects named "KeyObtain" and apply ESP
function ESP:ApplyToKeyObtains()
    for _, object in pairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") and object.Name == "KeyObtain" then
            self:CreateESP(object)
        end
    end
end

-- Apply ESP to all KeyObtains initially
ESP:ApplyToKeyObtains()

-- Optionally, connect to the DescendantAdded event to apply ESP to new KeyObtains
workspace.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("BasePart") and descendant.Name == "KeyObtain" then
        ESP:CreateESP(descendant)
    end
end)
end)


local Button3 = Tab1:NewButton("item esp", function()
    local ESP = {} -- Table to hold our ESP functions and data

-- Function to create a BillboardGui for ESP
function ESP:CreateESP(object)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "Flashlight"
    billboardGui.Adornee = object
    billboardGui.Size = UDim2.new(0, 100, 0, 50)
    billboardGui.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = billboardGui
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = object.Name
    textLabel.TextColor3 = Color3.new(0, 1, 0) -- Green color
    textLabel.TextStrokeTransparency = 0.5

    billboardGui.Parent = object
end

-- Function to find objects named "Flashlight" and apply ESP
function ESP:ApplyToFlashlights()
    for _, object in pairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") and object.Name == "Flashlight" then
            self:CreateESP(object)
        end
    end
end

-- Apply ESP to all flashlights initially
ESP:ApplyToFlashlights()

-- Optionally, connect to the DescendantAdded event to apply ESP to new flashlights
workspace.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("BasePart") and descendant.Name == "Flashlight" then
        ESP:CreateESP(descendant)
    end
end)
end)

local Slider1 = Tab1:NewSlider("Speed:", "", true, "/", {min = 1, max = 100, default = 0}, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

local Slider2 = Tab1:NewSlider("fov:", "", true, "/", {min = 1, max = 120, default = 0}, function(value)
    game.Workspace.CurrentCamera.FieldOfView = value 
end)

local FinishedLoading = Notif:Notify("Loaded LuintyB", 4, "success")

-- // FUNCTION DOCS: 
--[[
    MAIN COMPONENT DOCS:
    -- // local library = loadstring(game:HttpGet(link: url))()
    -- // library.title = text: string
    -- // local Window = library:Init()
    -- [library.title contains rich text]
    -- / library:Remove()
    -- destroys the library
    -- / library:Text("new")
    -- sets the lbrary's text to something new
    - / library:UpdateKeybind(Enum.KeyCode.RightAlt)
    -- sets the lbrary's keybind to switch visibility to something new
    __________________________
    -- // local notificationLibrary = library:InitNotifications()
    -- // local Notification = notificationLibrary:Notify(text: string, time: number, type: string (information, notification, alert, error, success))
    -- [Notify contains rich text]
    -- / 3rd argument is a function, used like this:
    
    Notif:Notify("Function notification", 7, function()
        print("done")
    end)
    -- / Welcome:Text("new text")
    -- sets the notifications text to something differet [ADDS A +0.4 ONTO YOUR TIMER]
    __________________________
    -- // local Wm = library:Watermark(text: string)
    -- [Watermark contains rich text]
    -- / Wm:Hide()
    -- hides the watermark from eye view
    -- / Wm:Show()
    -- makes the watermark visible at the top of your screen
    -- / Wm:Text("new")
    -- sets the watermark's text to something new
    -- / Wm:Remove()
    -- destroys the watermark
    __________________________
    -- // local Tab1 = Init:NewTab(text: string)
    -- [tab title contains rich text]
    -- / Tab1:Open()
    -- opens the tab you want
    -- / Tab1:Remove()
    -- destroys the tab
    -- / Tab1:Hide()
    -- hides the tab from eye view
    -- / Tab1:Show()
    -- makes the tab visible on the selection table
    -- / Tab1:Text("new")
    -- sets the tab's text to something new
    __________________________
    -- [label contains rich text]
    -- / Label1:Text("new")
    -- sets the label's text to something new
    -- / Label1:Remove()
    -- destroys the label
    -- / Label1:Hide()
    -- hides the label from eye view
    -- / Label1:Show()
    -- makes the tab visible on the page that is used
    -- / Label1:Align("le")
    -- aligns the label to a new point in text X
    __________________________
    -- [Button contains rich text]
    -- / Button1:AddButton("text", function() end)
    -- adds a new button inside of the frame [CAN ONLY GO UP TO 4 BUTTONS AT A TIME]
    -- / Button1:Fire()
    -- executes the script within the button
    -- / Button1:Text("new")
    -- sets the button's text to something new
    -- / Button1:Hide()
    -- hides the button from eye view
    -- / Button1:Show()
    -- makes the button visible
    -- / Button1:Remove()
    -- destroys the button
    __________________________
    -- [Sections contain rich text]
    -- / Section1:Text("new")
    -- sets the section's text to something new
    -- / Section1:Hide()
    -- hides the section from eye view
    -- / Section1:Show()
    -- makes the section visible
    -- / Section1:Remove()
    -- destroys the section
    __________________________
    -- [Toggles contain rich text]
    -- / Toggle1:Text("new")
    -- sets the toggle's text to something new
    -- / Toggle1:Hide()
    -- hides the toggle from eye view
    -- / Toggle1:Show()
    -- makes the toggle visible
    -- / Toggle1:Remove()
    -- destroys the toggle
    -- / Toggle1:Change()
    -- changes the toggles state to the opposite
    -- / Toggle1:Set(true)
    -- sets the toggle to true even if it is true
    -- / Toggle1:AddKeybind(Enum.KeyCode.P, false, function() end) -- false / true is used for just changing the toggles state
    -- adds a keybind to the toggle
    -- / Toggle1:SetFunction(function() end)
    -- sets the toggles function
    __________________________
    -- [Keybinds contain rich text]
    -- / Keybind1:Text("new")
    -- sets the keybind's text to something new
    -- / Keybind1:Hide()
    -- hides the keybind from eye view
    -- / Keybind1:Show()
    -- makes the keybind visible
    -- / Keybind1:Remove()
    -- destroys the keybind
    -- / Keybind1:SetKey(Enum.KeyCode.P)
    -- sets the keybinds new key
    -- / Keybind1:Fire()
    -- fires the keybind function
    -- / Keybind1:SetFunction(function() end)
    -- sets the new keybind function
    __________________________
    -- [Textboxes contain rich text]
    -- / Textbox1:Input("new")
    -- sets the text box's input to something new
    -- / Textbox1:Place("new")
    -- sets the text box's placeholder to something new
    -- / Textbox1:Fire()
    -- fires the textbox function
    -- / Textbox1:SetFunction(function() end)
    -- sets the text boxes new function
    -- / Textbox1:Text("new")
    -- sets the textbox's text to something new
    -- / Textbox1:Hide()
    -- hides the textbox from eye view
    -- / Textbox1:Show()
    -- makes the textbox visible
    -- / Textbox1:Remove()
    -- destroys the textbox
    __________________________
    -- [Selectors contain rich text]
    -- / Selector1:SetFunction(function() end)
    -- sets the selector new function
    -- / Selector1:Text("new")
    -- sets the selector's text to something new
    -- / Selector1:Hide()
    -- hides the selector from eye view
    -- / Selector1:Show()
    -- makes the selector visible
    -- / Selector1:Remove()
    -- destroys the selector
    __________________________
    -- [Sliders contain rich text]
    -- / Slider1:Value(1)
    -- sets the slider new value
    -- / Slider1:SetFunction(function() end)
    -- sets the slider new function
    -- / Slider1:Text("new")
    -- sets the slider's text to something new
    -- / Slider1:Hide()
    -- hides the slider from eye view
    -- / Slider1:Show()
    -- makes the slider visible
    -- / Slider1:Remove()
    -- destroys the slider
    ---------------------------------------------------------------------------------------------------------
    MISC SEMI USELESS DOCS:
    -- / library.rank = ""
    -- returns the rank you choose (default = "private")
    -- / library.fps
    -- returns FPS you're getting in game
    -- / library.version
    -- returns the version of the library
    -- / library.title = ""
    -- returns the title of the library
    -- / library:GetDay("word") -- word, short, month, year
    -- returns the os day
    -- / library:GetTime("24h") -- 24h, 12h, minute, half, second, full, ISO, zone
    -- returns the os time
    -- / library:GetMonth("word") -- word, short, digit
    -- returns the os month
    -- / library:GetWeek("year_S") -- year_S, day, year_M
    -- returns the os week
    -- / library:GetYear("digits") -- digits, full
    -- returns the os year
    -- / library:GetUsername()
    -- returns the localplayers username
    -- / library:GetUserId()
    -- returns the localplayers userid
    -- / library:GetPlaceId()
    -- returns the games place id
    -- / library:GetJobId()
    -- returns the games job id
    -- / library:CheckIfLoaded()
    -- returns true if you're fully loaded
    -- / library:Rejoin()
    -- rejoins the same server as you was in
    -- / library:Copy("stuff")
    -- copies the inputed string
    -- / library:UnlockFps(500) -- only works with synapse
    -- sets the max fps to something you choose
    
    -- / library:PromptDiscord("invite")
    -- invites you to a discord
]]
