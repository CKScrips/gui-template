local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "CK Hub | Adopt Me Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "AdoptMeConfig"})

-- Values


-- Functions


OrionLib:MakeNotification({
    Name = "Script Successfully Loaded",
    Content = "Loading Has been successful!",
    Image = "rbxassetid://17849312358",
    Time = 30
})

-- DupeTab
local DupeTab = Window:MakeTab({
	  Name = "Dupe Eggs",
	  Icon = "rbxassetid://4483345998",
	  PremiumOnly = false
})

-- DupeButton
DupeTab:AddButton({
	  Name = "Equip Egg To Dupe, Then Click Button",
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
	  Name = "Click To Dupe Eggs",
	  Callback = function()
		    OrionLib:MakeNotification({
	  Name = "Duping Eggs....",
	  Content = "Duping is in process..[Takes around 4-5 minutes] Do not leave the game. May require game restart to take effect.",
	  Image = "rbxassetid://4483345998",
	  Time = 10})
		    print("button pressed")
  	end    
})
		
--DupeParagraph
DupeTab:AddParagraph("*READ*","The Feature - Dupe Eggs - Will Not Work if you're in a private server")


-- TradeTab
local TradeTab = Window:MakeTab({
	    Name = "Trade Scam",
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
	  Name = "AutoFarm",
	  Icon = "rbxassetid://4483345998",
	  PremiumOnly = false
})

-- FarmToggle1
FarmTab:AddToggle({
	  Name = "Pet Farm",
	  Default = false,
	  Callback = function(value)
		      print(value)
	  end
})

-- FarmToggle2
FarmTab:AddToggle({
	  Name = "Baby Farm",
	  Default = false,
	  Callback = function(value)
		      print(value)
	  end
})

-- FarmButton
FarmTab:AddButton({
	  Name = "[TrustedScript] - Get AutoFarm Source",
	  Callback = function()
          print("button pressed")
	  end
})
FarmTab:AddParagraph("*READ*","To avoid glitching, do not use pet farm and baby farm at the same time.")

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
		print("button pressed")
    end    
})

-- MFR-NFR ChangerTab
local ChangerTab = Window:MakeTab({
    	Name = "MFR/NFR Pets",
   	  Icon = "rbxassetid://4483345998",
    	PremiumOnly = false
})

-- ChangerToggle
ChangerTab:AddToggle({
	  Name = "Make All Pets MFR",
	  Default = false,
	  Callback = function(value)
		      print(value)
	  end
})

ChangerTab:AddToggle({
	  Name = "Make All Pets NFR",
	  Default = false,
	  Callback = function(value)
		      print(value)
	  end
})
ChangerTab:AddParagraph("*READ*","Pets do not stay MFR/NFR. If you try to trade them, they will show in trade as normal pets.")

Tab:AddParagraph("*NOTE*","Features May Not Work If You're in a Private Server")
Tab:AddParagraph("Script Successfully Loaded!","Enjoy The Script!")
