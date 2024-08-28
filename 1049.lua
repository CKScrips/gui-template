local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "CKScripHub | Adopt Me Hub", HidePremium = false, IntroText = "CKScripHub", SaveConfig = true, 
ConfigFolder = "AdoptMeConfig"})

-- Values
_G.AutoMFR = True
_G.AutoNFR = True


-- Functions
function AutoMFR()
	while _G.AutoMFR do
	wait(.0001)
	require(game.ReplicatedStorage.ClientModules.Core.ClientData)
	clientData.get_data()[tostring(game.Players.LocalPlayer)]
	for i,v in pairs(playerData.inventory.pets) do
		v.properties.rideable = true
	        v.properties.flyable = true
	        v.properties.mega_neon = true
	  	end
  	end
end

function AutoNFR()
	while _G.AutoNFR do
	wait(.0001)
	require(game.ReplicatedStorage.ClientModules.Core.ClientData)
	clientData.get_data()[tostring(game.Players.LocalPlayer)]
	for i,v in pairs(playerData.inventory.pets) do
	        v.properties.rideable = true
	        v.properties.flyable = true
	        v.properties.neon = true
	  	end
  	end
end

		

-- TextBoxes
TradeTab:AddTextbox({
    Name = "Username",
    Default = " ",
    TextDisappear = false,
    Callback = function()
    end      
})



-- Buttons

DupeTab:AddButton({
	Name = "Equip egg to dupe, then click here",
	Callback = function()
		OrionLib:MakeNotification({
	Name = "Equip Egg To Dupe",
	Content = "Egg Equipped",
	Image = "rbxassetid://4483345998",
	Time = 5})
		print("button pressed")
    	end    
})

--DupeButton
DupeTab:AddButton({
	Name = "Click To Dupe Egg",
	Callback = function()
		  OrionLib:MakeNotification({
	Name = "Duping Egg....",
	Content = "Duping is in process..[May take up to 10 minutes] Do not leave the game.",
	Image = "rbxassetid://4483345998",
	Time = 10})
		  print("button pressed")
	end    
})

-- DupeButton
DupeTab:AddButton({
	Name = "Equip pet to dupe, then click here.",
	Callback = function()
		OrionLib:MakeNotification({
	Name = "Equip Pet To Dupe",
	Content = "Pet Equipped",
	Image = "rbxassetid://4483345998",
	Time = 5})
		print("button pressed")
	end    
})

--DupeButton
DupeTab:AddButton({
	Name = "Click To Dupe Pet",
	Callback = function()
		  OrionLib:MakeNotification({
	Name = "Duping Pet....",
	Content = "Duping is in process..[May take up to 10 minutes] Do not leave the game.",
	Image = "rbxassetid://4483345998",
	Time = 10})
		  print("button pressed")
	end    
})

BucksTab:AddButton({
	Name = "Get Infinite Bucks",
    	Callback = function()
		print("button pressed")
    	end    
})

FarmTab:AddButton({
	Name = "[TrustedScript] - Get AutoFarm Source",
	Callback = function()
		print("button pressed")
	end
})

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



-- Tabs

local DupeTab = Window:MakeTab({
	Name = "Dupe Egg/Pet",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ChangerTab = Window:MakeTab({
    Name = "MFR/NFR Pets",
   	Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local BucksTab = Window:MakeTab({
    Name = "Infinite Bucks",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TradeTab = Window:MakeTab({
	Name = "Trade Scam",
	Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})



-- Toggles
FarmTab:AddToggle({
	Name = "Pet Farm",
	Default = false,
	Callback = function(value)
		print(value)
	end
})

FarmTab:AddToggle({
	Name = "Baby Farm",
	Default = false,
	Callback = function(value)
		print(value)
	end
})

ChangerTab:AddToggle({
	Name = "Make All Pets MFR",
	Default = false,
	Callback = function(value)
		_G.AutoMFR = value
		AutoMFR()
	end
})

ChangerTab:AddToggle({
	Name = "Make All Pets NFR",
	Default = false,
	Callback = function(value)
		_G.AutoNFR = value
		AutoNFR()
	end
})


-- Notifications
OrionLib:MakeNotification({
    Name = "Script Successfully Loaded",
    Content = "Loading Has been successful!",
    Image = "rbxassetid://17849312358",
    Time = 10})


-- Paragraphs
TradeTab:AddParagraph("*READ*","The function - Freeze Trade - will not work in private or full servers.")

TradeTab:AddParagraph("cont.","This trade needs to look convincing. You must have pets of value so your victim will accept.")
	
FarmTab:AddParagraph("*READ*","To avoid glitching, do not use pet farm and baby farm at the same time.")
	
DupeTab:AddParagraph("*READ*","The Feature - Dupe Eggs/Pets -  will not work in private or full servers.")

ChangerTab:AddParagraph("Pets do not stay MFR/NFR","If you try to trade them, they will show up as normal pets.")

Tab:AddParagraph("*NOTE*","Features Do Not Work If You're in a Private or Full Server")

Tab:AddParagraph("Script Successfully Loaded!","Enjoy The Script!")
