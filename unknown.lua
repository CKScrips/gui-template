local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Vlorp Script | Adopt Me [5.9]", HidePremium = false, SaveConfig = true, ConfigFolder = 
"OrionTest"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Dupe Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Click The Box Button",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddToggle({
	Name = "Click To Continue",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local Tab = Window:MakeTab({
	Name = "Trade Scam",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Click The Box Button",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddToggle({
	Name = "Click To Trade Scam",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local Tab = Window:MakeTab({
	Name = "Egg Spawner",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Click The Box Button",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddToggle({
	Name = "Start Egg Spawn",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local Tab = Window:MakeTab({
	Name = "Pet Dupe",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Click The Box Button",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddToggle({
	Name = "Start Pet Dupe",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})


OrionLib:Init()
