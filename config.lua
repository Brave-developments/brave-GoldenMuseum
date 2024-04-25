Config = Config or {}
--brave
Config.Timeout = 60 * (60 * 1000)
Config.DoorLock = 'qb' -- use 'qb' for qb-doorlock events
Config.DoorId = 'brave' -- name of the door in your doorlock config
Config.RequiredCops = 0 --police
Config.goldenmuseumLocation = {
    ["coords"] = vector3(-555.34, -616.63, 34.75),
}

  


Config.WhitelistedWeapons = { 
    [`weapon_assaultrifle`] = {
        ["timeOut"] = 10000
    },
    [`weapon_carbinerifle`] = {
        ["timeOut"] = 10000
    },
    [`weapon_pumpshotgun`] = {
        ["timeOut"] = 10000
    },
    [`weapon_sawnoffshotgun`] = {
        ["timeOut"] = 10000
    },
    [`weapon_compactrifle`] = {
        ["timeOut"] = 10000
    },
    [`weapon_microsmg`] = {
        ["timeOut"] = 10000
    },
    [`weapon_autoshotgun`] = {
        ["timeOut"] = 10000
    },
    [`weapon_pistol`] = {
        ["timeOut"] = 10000
    },
    [`weapon_pistol_mk2`] = {
        ["timeOut"] = 10000
    },
    [`weapon_combatpistol`] = {
        ["timeOut"] = 10000
    },
    [`weapon_appistol`] = {
        ["timeOut"] = 10000
    },
    [`weapon_pistol50`] = {
        ["timeOut"] = 10000
    },
}

Config.VitrineRewards = {
    [1] = {
        ["item"] = "burial",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [2] = {
        ["item"] = "fishingchest",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [3] = {
        ["item"] = "greek",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [4] = {
        ["item"] = "jadeite",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [5] = {
        ["item"] = "mask",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [6] = {
        ["item"] = "vanpogo",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
}

Config.Locations = {
    [1] = {
        ["coords"] = vector4(-538.18, -603.61, 34.75, 351.97),
        ["isOpened"] = false,
        ["isBusy"] = false,
    }, 
    [2] = {
        ["coords"] = vector4(-544.77, -603.5, 34.75, 355.19),
        ["isOpened"] = false,
        ["isBusy"] = false, 
    },
    [3] = {
        ["coords"] = vector4(-565.09, -603.0, 34.75, 357.69),
        ["isOpened"] = false,
        ["isBusy"] = false, 
    },
    [4] = {
        ["coords"] = vector4(-571.62, -602.84, 34.75, 5.19),
        ["isOpened"] = false,
        ["isBusy"] = false, 
    },
    [5] = {
        ["coords"] = vector4(-568.66, -610.02, 35.58, 261.88),
        ["isOpened"] = false,
        ["isBusy"] = false,
    }, 
    [6] = {
        ["coords"] = vector4(-536.04, -610.53, 35.66, 269.35),
        ["isOpened"] = false,
        ["isBusy"] = false, 
    },
}

Config.MaleNoHandshoes = {
    [0] = true, [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true, [10] = true, [11] = true, [12] = true, [13] = true, [14] = true, [15] = true, [18] = true, [26] = true, [52] = true, [53] = true, [54] = true, [55] = true, [56] = true, [57] = true, [58] = true, [59] = true, [60] = true, [61] = true, [62] = true, [112] = true, [113] = true, [114] = true, [118] = true, [125] = true, [132] = true,
}

Config.FemaleNoHandshoes = {
    [0] = true, [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true, [10] = true, [11] = true, [12] = true, [13] = true, [14] = true, [15] = true, [19] = true, [59] = true, [60] = true, [61] = true, [62] = true, [63] = true, [64] = true, [65] = true, [66] = true, [67] = true, [68] = true, [69] = true, [70] = true, [71] = true, [129] = true, [130] = true, [131] = true, [135] = true, [142] = true, [149] = true, [153] = true, [157] = true, [161] = true, [165] = true,
}
