local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "CK Hub | Adopt Me Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "AdoptMeConfig"})

-- Values
_G.PetFarm = True
_G.BabyFarm = True


-- Functions
Function BabyFarm()
    while _G.BabyFarm == True do
        ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Babies", true)
    end
end

Function PetFarm()
    while _G.PetFarm == True do
        ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Parents", true)
    end
end



OrionLib:MakeNotification({
	Name = "Script Successfully Loaded",
	Content = "Loading Has been successful!",
	Image = "rbxassetid://17849312358",
	Time = 30
})

-- DupeTab
local DupeTab = Window:MakeTab({
    Name = "Dupe Eggs 🥚",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- DupeButton
DupeTab:AddButton({
	Name = "Equip Egg To Dupe",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Egg Selector",
	Content = "Egg Equipped",
	Image = "rbxassetid://4483345998",
	Time = 5})
    end    
})

--DupeButton
DupeTab:AddButton({
	Name = "Click To Dupe Eggs",
	Callback = function()

--DupeNotification
OrionLib:MakeNotification({
	Name = "Duping Eggs....",
	Content = "Duping is in process..[Takes around 4-5 minutes] Do not leave the game. May require game restart to take effect.",
	Image = "rbxassetid://4483345998",
	Time = 10})
  	end    
})
--DupeParagraph
DupeTab:AddParagraph("*READ*","The Feature - Dupe Eggs - Will Not Work if you're in a private server")


-- TradeTab
local TradeTab = Window:MakeTab({
    Name = "Trade Scam🙈",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- TradeTextBox
TradeTab:AddTextbox({
    Name = "Username",
    Default = "Player",
    TextDisappear = false,
    Callback = function()
    end      
})

-- TradeButton
TradeTab:AddButton({
	Name = "Freeze Trade To The Victim",
	Callback = function()
	OrionLib:MakeNotification({
	Name = "Freeze Trade Enabled",
	Content = "Remove your offer. The victim can not see that you've removed items/pets.",
	Image = "rbxassetid://4483345998",
	Time = 5})
      		print("button pressed")
  	end    
})

-- FarmTab
local FarmTab = Window:MakeTab({
    Name = "AutoFarm 🚜",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

FarmTab:AddToggle({
	Name = "Pet Farm",
	Default = false,
	Callback = function(value)
		_G.PetFarm == value
        petfarm()
	end    
})

FarmTab:AddToggle({
	Name = "Baby Farm",
	Default = false,
	Callback = function()
		_G.BabyFarm == value
        BabyFarm()
	end    
})

-- FarmButton
FarmTab:AddButton({
    Name = "[TrustedScript📄] - Get AutoFarm Source ✅",
    Callback = function()
          	print("button pressed")
  	end    
})

--BucksTab
local BucksTab = Window:MakeTab({
    Name = "Infinite Bucks",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- BucksButton
BucksTab:AddButton({
    Name = "Get Infinite Bucks",
    Callback = function()
        require(game:service'ReplicatedStorage'.Fsys).load("ClientData").update("money",(15999999984/16))
    end    
})

-- MFR-NFR ChangerTab
local ChangerTab = Window:MakeTab({
    Name = "MFR-NFR Changer",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- ChangerButton1
ChangerTab:AddButton({
    Name = "MFR Changer-(Inventory)",
	Callback = function()
      		print("button pressed")
  	end    
})

-- ChangerButton2
ChangerTab:AddButton({
    Name = "NFR Changer-(Inventory)",
    Callback = function()
            print("button pressed")
  	end    
})


Tab:AddParagraph("*NOTE*","Features May Not Work If You're in a Private Server")
Tab:AddParagraph("Script Successfully Loaded!","Enjoy The Script!")
