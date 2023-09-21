Config = {}
Config.Debug = false -- If True You Can See The PolyZone

Config.Use_Methlab_key = false -- If True Player Will Need (meth_key) To Enter The Lab

Config.Blast = true -- If True The Player Will Be blasted If He Fail The Mini Game

Config.shop = true -- If You Want Player To Buy Item From Shop

Config.blip = false

Config.Blip_Config = {
    label = 'Meth Lab',
    coords = vector3(-1531.54, -887.34, 10.17),
    sprite = 499,
    scale = 0.9,
    color = 27
}

Config.ps_ui = {
    -- Circle Game --
    NumberOfCircles = 4,
    MS = 20,
}


-- \\ Works Only If Config.shop = true // --
Config.shopitems = {
    label = "Dealer",    
    slots = 3,
    items = {
        [1] = {
            name = "sulfuricacid",
            price = 100,
            amount = 30,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "hydrochloricacid",
            price = 150,
            amount = 30,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "sodium_benzoate",
            price = 200,
            amount = 30,
            info = {},
            type = "item",
            slot = 3,
        },
    }
}

----\\ [Name Of The Scriptes] //----
Config.Resource_Names = { 
    Core = 'qb-core',
    Target = 'qb-target',
    Menu = 'qb-menu',
    MiniGame = 'ps-ui'
}
