-- compact re-exec safe loader (updated to your new script version & settings)
getgenv()._ = getgenv()._ or "Join discord.gg/msgabv2t9Q | discord.gg/stando to get latest update ok bai | If you pay for this script you get scammed, this script is completely free ok"

-- toggle (set true to run)
getgenv().Enabled = getgenv().Enabled or false
if not getgenv().Enabled then
    warn("Script execution is disabled. Set 'getgenv().Enabled = true' to run.")
    return
end

-- cleanup previous run (remote script can set getgenv().SniperBotCleanup = function() ... end)
if type(getgenv().SniperBotCleanup) == "function" then
    pcall(getgenv().SniperBotCleanup)
end

-- prevent double-run
if getgenv().SniperBotLoaded then
    warn("SniperBot already loaded.")
    return
end
getgenv().SniperBotLoaded = true

-- owner & whitelist
getgenv().Owner = "Rias_high"
getgenv().Whitelist = getgenv().Whitelist or {
    1,
    2,
    3,
}

-- configuration (kept exactly as provided)
getgenv().Configuration = getgenv().Configuration or {
    ['Guns'] = {"Aug", "Rifle"},
    ['Strafe'] = "Random",
    ['Void'] = "Meta",
    ['Lerp'] = 0.001,
    ['CFrame'] = {0,1,0},
    ['Prediction'] = 4,
    ['Multiplier'] = 5,
    ['StompHeight'] = 4.4,
    ['RandomStompOffset'] = 1,
    ['TimeBeforeVoid'] = 1.4,
    ['TimesAmmo'] = 5,
    ['SpareAmmo'] = 3,
    ['ForceAmmo'] = 1,
    ['InstantRespawn'] = false,
    ['Cooldown'] = 120,
    ['DoubleBarrelTime'] = 0.11,
    ['CustomAnimationPlay'] = false,
    ['CustomAnimation'] = nil,
    ['CustomAnimationSpeed'] = 1,
    ['AuraRange'] = 250,
    ['CrewID'] = 32570691,
    ['VoidView'] = true,
    ['AntiStomp'] = true,
    ['HideScreen'] = false,
    ['CustomPrefix'] = "!",
    ['Fpscap'] = 35
}

-- safe remote load
local url = "https://xk5ng.github.io/Sniper-Bot-Rewrite"
local ok, err = pcall(function()
    local src = game:HttpGet(url)
    local fn = loadstring(src)
    if type(fn) ~= "function" then error("loadstring did not return a function") end
    fn()
end)

if not ok then
    warn("Failed to load remote script:", err)
    getgenv().SniperBotLoaded = false -- allow retry after fix
end

-- note: remote script may set getgenv().SniperBotCleanup to a function to enable proper re-exec cleanup
