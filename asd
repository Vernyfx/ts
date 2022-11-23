local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Tapping Simulator",
	LoadingTitle = "Tapping Simulator script by VernyFx",
	LoadingSubtitle = "by VernyFX",
	ConfigurationSaving = {
		Enabled = true,
		FileName = "Verny Hub"
	},
	KeySystem = false,
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		Key = "ABCDEF"
	}
})

local Tab = Window:CreateTab("Main")

--locals

local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart









--da thing

local Toggle = Tab:CreateToggle({
	Name = "Auto Click",
	CurrentValue = false,
	Flag = "AutoClick",
	Callback = function(Aucl)
        _G.autoclick = Aucl;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autoclick then
            game:GetService("ReplicatedStorage").Events.Tap:FireServer(1)
            wait(0.01)
        end
    end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Halloween Click",
	CurrentValue = false,
	Flag = "AutoHalClick",
	Callback = function(Auhcl)
        _G.autohalclick = Auhcl;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autohalclick then
            game:GetService("ReplicatedStorage").Events.Tap:FireServer(5)
            wait(0.01)
        end
    end
end)







local Label = Tab:CreateLabel("Must Have The Rebirth option enabled for example:")

local Label = Tab:CreateLabel("i Wanna do 18k rebirth then i have to have the 18k reb option")

local Input = Tab:CreateInput({
	Name = "Input How Many Rebirths You Want to Do",
	PlaceholderText = "Rebirths",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
        if tonumber(Text) then
            _G.Thing = tonumber(Text)
          end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "AutoRebirth",
	Callback = function(Aureb)
        _G.autorebirth = Aureb;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autorebirth then
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(_G.Thing)
            wait(0.06)
        end
    end
end)









local Tab = Window:CreateTab("Auto Eggs")

local eggs = game:GetService("Workspace").Shops:GetChildren()

local eggsTable = {}

for i,v in ipairs(eggs) do
    if v:IsA("Model") then
        table.insert(eggsTable, v.Name)
    end
end

local Dropdown = Tab:CreateDropdown({
	Name = "Select Egg",
	Options = eggsTable,
	CurrentOption = " ",
	Flag = "EggsDropdown", 
	Callback = function(EValue)
        _G.selectedegg = EValue;
	end,
})

local Label = Tab:CreateLabel("Must Have Gamepass for 3 or 4 egg Amount")


local Dropdown = Tab:CreateDropdown({
	Name = "Select Egg Amount",
	Options = {1, 3, 4},
	CurrentOption = " ",
	Flag = "EggAmount",
	Callback = function(Eggam)
        _G.eggamount = Eggam;
	end,
})



local Toggle = Tab:CreateToggle({
	Name = "Auto Open Selected Egg",
	CurrentValue = false,
	Flag = "AutoEgg", 
	Callback = function(Auegg)
        _G.autoegg = Auegg;
	end,
})

task.spawn(function()
    while wait() do
        if _G.eggamount then
        if _G.autoegg then
            if _G.selectedegg ~= nil then
                    game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer({},_G.selectedegg, _G.eggamount)
                end
            end
        end
    end
end)


local Tab = Window:CreateTab("Rewards")


local Toggle = Tab:CreateToggle({
	Name = "Auto Claim Daily Reward",
	CurrentValue = false,
	Flag = "AutoDailyRew",
	Callback = function(DWValue)
        _G.dailyrew = DWValue;
	end,
})

task.spawn(function()
    while wait() do
        if _G.dailyrew then
            game:GetService("ReplicatedStorage").Events.OpenDailyReward:InvokeServer()
            wait(10)
        end
    end
end)

local Toggle = Tab:CreateToggle({
	Name = "Auto Claim Group Reward",
	CurrentValue = false,
	Flag = "AutoGroupRew",
	Callback = function(GWValue)
        _G.grouprew = GWValue;
	end,
})

task.spawn(function()
    while wait() do
        if _G.grouprew then
            game:GetService("ReplicatedStorage").Events.ClaimGroupRewards:FireServer()
            wait(10)
        end
    end
end)

local Toggle = Tab:CreateToggle({
	Name = "Auto Claim Random Rewards",
	CurrentValue = false,
	Flag = "AutoRandomRew",
	Callback = function(RWValue)
        _G.randomrew = RWValue;
	end,
})

task.spawn(function()
    while wait() do
        if _G.randomrew then
            game:GetService("ReplicatedStorage").Events.ClaimRandomReward:FireServer()
            wait(10)
        end
    end
end)

local Toggle = Tab:CreateToggle({
	Name = "Auto Claim Rank Rewards",
	CurrentValue = false,
	Flag = "AutoRankRew", 
	Callback = function(RAWValue)
        _G.rankrew = RAWValue;
	end,
})

task.spawn(function()
    while wait() do
        if _G.rankrew then
            game:GetService("ReplicatedStorage").Events.ClaimRankReward:FireServer()
            wait(10)
        end
    end
end)


local Tab = Window:CreateTab("Upgrades/Boosts")

local Toggle = Tab:CreateToggle({
	Name = "Auto Upgrade Rebirth",
	CurrentValue = false,
	Flag = "AutoUpgReb", 
	Callback = function(APR)
        _G.autoupgreb = APR;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autoupgreb then
            game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("rebirthUpgrades")
            wait(0.5)
        end
    end
end)




local Toggle = Tab:CreateToggle({
	Name = "Auto Upgrade Jumps",
	CurrentValue = false,
	Flag = "AutoUpgJumps",
	Callback = function(APJ)
        _G.autoupgjump = APJ;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autoupgjump then
            game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("jumps")
            wait(0.5)
        end
    end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Upgrade Gems",
	CurrentValue = false,
	Flag = "AutoUpgGems", 
	Callback = function(APG)
        _G.autoupggems = APG;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autoupggems then
            game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("gemMultiplierUpgrade")
            wait(0.5)
        end
    end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Upgrade Storage",
	CurrentValue = false,
	Flag = "AutoUpgSto",
	Callback = function(APS)
    _G.autoupgsto = APS;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autoupgsto then
            game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("storageUpgrade")
            wait(0.5)
        end
    end
end)


local Label = Tab:CreateLabel("--Boosts--")

local Toggle = Tab:CreateToggle({
	Name = "Auto Use 3x Taps Boost [ALL]",
	CurrentValue = false,
	Flag = "AutoUseTaps",
	Callback = function(AUT)
        _G.autousetaps = AUT;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autousetaps then
            game:GetService("ReplicatedStorage").Events.UseBoost:FireServer("tripleTaps")
            wait(0.5)
        end
    end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Use 2x Luck Boost [ALL]",
	CurrentValue = false,
	Flag = "AutoUseLuck",
	Callback = function(AUL)
        _G.autouseluck = AUL;
	end,
})


task.spawn(function()
    while wait() do
        if _G.autouseluck then
            game:GetService("ReplicatedStorage").Events.UseBoost:FireServer("doubleLuck")
            wait(0.5)
        end
    end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Use 3x Luck [ALL]",
	CurrentValue = false,
	Flag = "AutoUseLuck3", 
	Callback = function(AUL3)
        _G.autouseluck3 = AUL3
	end,
})

task.spawn(function()
    while wait() do
        if _G.autouseluck3 then
            game:GetService("ReplicatedStorage").Events.UseBoost:FireServer("tripleLuck")
            wait(0.5)
        end
    end
end)

local Tab = Window:CreateTab("Islands/Locations")

local proxis = game:GetService("Workspace").Proximity:GetChildren()

local proxiesTable = {}


for i,v in ipairs(proxis) do
    if v:IsA("Part") then
        table.insert(proxiesTable, v.Name)
    end
end

local Dropdown = Tab:CreateDropdown({
	Name = "Select Destination",
	Options = proxiesTable,
	CurrentOption = " ",
	Callback = function(Proxies)
        _G.proxies = Proxies;
	end,
})

local Button = Tab:CreateButton({
	Name = "Teleport to Selected Destination",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Proximity[_G.proxies].CFrame
	end,
})


local Tab = Window:CreateTab("Gui's")

local Dropdown = Tab:CreateDropdown({
	Name = "Select Gui",
	Options = {"ShinyMachine","Elements", "Upgrades", "Achivements", "Enchantment", "RebirthShop", "RainbowMachine", "PetIndex", "Store", "BankStorage", "Crafting", "MagmaForge", "ExoticShop", "SuperRebirth", "Missions", "MountDealer", "HolyForge", "DarkMatterForge",},
	CurrentOption = " ",
	Callback = function(Guis)
        _G.guis = Guis;
	end,
})

local Button = Tab:CreateButton({
	Name = "Open Selected Gui",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.UI[_G.guis].Visible = true;
end,
})

local Button = Tab:CreateButton({
	Name = "Close Selected Gui",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.UI[_G.guis].Visible = false;
end,
})



local Tab = Window:CreateTab("Credits")

local Paragraph = Tab:CreateParagraph({Title = "Join My Discord Server", Content = "https://discord.gg/vEQDXpeX"})

local Button = Tab:CreateButton({
	Name = "Copy Discord Link",
	Callback = function()
        Rayfield:Notify("Success","The Discord Link Has Been Successfully Copied!",10010348543) -- (t,c,image)
        setclipboard("https://discord.gg/vEQDXpeX")
    end,
})
