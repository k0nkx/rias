getgenv().loadscript = true -- set to false to prevent execution

if getgenv().loadscript then
    getgenv()._ =
    "Join discord.gg/msgabv2t9Q | discord.gg/stando to get latest update ok bai | If you pay for this script you get scammed, this script is completely free ok"

    getgenv().Owner = "Rias_High"

    getgenv().Whitelist = { --Userids of who can control the bot
        2432222018,
    }

    getgenv().Configuration = {
        ['Guns'] = {"Aug", "Rifle"},
        ['Strafe'] = "Random",
        ['Void'] = "Unhittable",
        ['Lerp'] = 0.001,
        ['CFrame'] = {0, 1, 0},
        ['Prediction'] = 4,
        ['Multiplier'] = 5,
        ['StompHeight'] = 4.4,
        ['RandomStompOffset'] = 1.3,
        ['TimeBeforeVoid'] = 1.4,
        ["TimesAmmo"] = 5,
        ['SpareAmmo'] = 3,
        ['ForceAmmo'] = 1,
        ['InstantRespawn'] = false,
        ['Cooldown'] = 120,
        ['DoubleBarrelTime'] = 0.11,
        ['CustomAnimationPlay'] = false,
        ['CustomAnimation'] = nil,
        ['CustomAnimationSpeed'] = 1,
        ['AuraRange'] = 150,
        ['CrewID'] = 32570691,
        ['VoidView'] = false,
        ['AntiStomp'] = true,
        ['HideScreen'] = false,
        ['CustomPrefix'] = "!",
        ['Fpscap'] = 150
    }

    loadstring(game:HttpGet("https://xk5ng.github.io/Sniper-Bot-Rewrite"))()
end
