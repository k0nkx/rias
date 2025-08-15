getgenv()._ = 
"Join discord.gg/msgabv2t9Q | discord.gg/stando to get latest update ok bai | If you pay for this script you get scammed, this script is completely free ok"

--[[
To get started in "getgenv().Owner" put the username you want to control the alt.
!! \\ MAKE SURE THE LocalPlayer AND LocalPlayer ACCOUNT ARE IN SAME SERVER // !!
--]]

-- **NEW: Enable/Disable Script Execution**
getgenv().Enabled = false -- Set to false to block the script from running

if not getgenv().Enabled then
    warn("Script execution is disabled. Set 'Enabled = true' to run.")
    return -- Stops the script if disabled
end

getgenv().Owner = "Rikkahunt"

getgenv().Configuration = {
    ['Guns'] = {"Rifle", "Flintlock"}, --Default gun, recommended
    ['Strafe'] = "Random", --Strafe method, Normal - orbit; Random - random;
    ['Void'] = "Meta", --Void methods, Unhittable, UpDown, Meta, Lerp, Custom
    ['Lerp'] = 0.1, --Change the lerp speed, required Void method 'Lerp'
    ['CFrame'] = {0, 1, 0}, --Custom void cframe, required Void method 'Custom'; return the cframe value to math.random [exception Y];
    ['Prediction'] = 1.44, --Prediction, self explanatory
    ['Multiplier'] = 3, --Multiplier, multiplies the prediction value; don't change if you don't know what this does
    ['StompHeight'] = 3, --Stomp Y offset, self explanatory; affects stomp Z X offset
    ['RandomStompOffset'] = 1.7, --Stomp Z X offset, 0 = nil or disable; recommended for alts; '5' value is max for dh
    ['SpareAmmo'] = 8, --How much ammo til start buying
    ['ForceAmmo'] = 4, --How much ammo to force buying
    ['CrewID'] = 32570691, --Crew id, preferable to be in both same crew alt/main
    ['AntiStomp'] = true, --Self explanatory
    ['LowGraphic'] = true, --Self explanatory
    ['HideScreen'] = false, --Boost fps and lowered cpu consumption, recommended
    ['CustomPrefix'] = "!", --Bot prefix
    ['Fpscap'] = 150 --Capped fps
}

loadstring(game:HttpGet("https://xk5ng.github.io/Sniper-Bot-Rewrite"))()
