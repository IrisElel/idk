--init
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Test Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "TestHub.Script"
}

GUI:Credit{
    Name = "somecat",
    Description = "Created this test hub",
    V3rm = "none",
    Discord = "somecat#7631"
}

GUI:Notification{
    Title = "Executed",
    Text = "Thanks for using the Test Hub",
    Duration = 5,
    Callback = function()
        print("Notification")
    end
}

--tab1
local Tab1 = GUI:Tab{
    Name = "Tab 1",
    Icon = "rbxassetid://8569322835"
}


Tab1:Button{
    Name = "Button",
    Description = "test",
    Callback = function()
        print("Clicked")
    end
}


Tab1:Toggle{
    Name = "Toggle",
    StartingState = false,
    Description = "test",
    Callback = function(state)
        print(state)
    end
}


Tab1:Textbox{
    Name = "Textbox",
    Callback = function(text)
        print(text)
    end
}

Tab1:Slider{
    Name = "Slider",
    Default = 16,
    Min = 0,
    Max = 250,
    Callback = function(value)
        print(value)
    end
}
