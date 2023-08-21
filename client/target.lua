
exports[Config.Resource_Names.Target]:AddBoxZone("EnterLab", vector3(-1530.64, -886.9, 10.17), 0.2, 1.2, {
    name = "EnterLab",
    heading = 50,
    debugPoly = Config.Debug,
    minZ= 9.27,
    maxZ= 11.67,
}, {
    options = {
        {
            type = "client",
            event = "Butter-Methlab:client:EnterLab",
            icon = 'fas fa-example',
            label = 'Enter Lab',
        }
    },
    distance = 2.5, 
  })

exports[Config.Resource_Names.Target]:AddBoxZone("ExitLab", vector3(968.76, -147.06, -46.4), 1.25, 0.6, {
    name = "ExitLab",
    heading = 0,
    debugPoly = Config.Debug,
    minZ=-47.4,
    maxZ=-45.0,
}, {
    options = {
        {
            type = "client",
            event = "Butter-Methlab:client:ExitLab",
            icon = 'fas fa-example',
            label = 'Exit Lab',
        }
    },
    distance = 2.5, 
  })


exports[Config.Resource_Names.Target]:AddBoxZone("MixChemical", vector3(978.15, -148.01, -48.53), 2.0, 1.8, {
    name = "MixChemical",
    heading = 355,
    debugPoly = Config.Debug,
    minZ=-50.53,
    maxZ=-47.53,
}, {
    options = {
        {
            type = "client",
            event = "Butter-Methlab:client:ChemicalMenu",
            icon = 'fas fa-example',
            label = 'Mix Chemical',
        }
    },
    distance = 2.5, 
})

exports[Config.Resource_Names.Target]:AddBoxZone("temperature", vector3(982.58, -145.92, -49.0), 0.4, 1.2, {
    name = "temperature",
    heading = 0,
    debugPoly = Config.Debug,
    minZ=-49.2,
    maxZ=-48.2,
}, {
    options = {
        {
            type = "client",
            event = "Butter-Methlab:client:Temperaturemachine",
            icon = 'fas fa-example',
            label = 'Add Liquid',
        }
    },
    distance = 2.5, 
  })

exports[Config.Resource_Names.Target]:AddBoxZone("ingredient", vector3(979.82, -144.16, -49.0), 1.2, 1.0, {
    name = "ingredient",
    heading = 355,
    debugPoly = Config.Debug,
    minZ=-49.2,
    maxZ=-47.8,
}, {
    options = {
        {
            type = "client",
            event = "Butter-Methlab:client:ingredient",
            icon = 'fas fa-example',
            label = 'Add Ingredient',
        }
    },
    distance = 2.5, 
  })

exports[Config.Resource_Names.Target]:AddBoxZone("makemeth", vector3(986.78, -140.5, -49.0), 1.0, 2.0, {
    name = "makemeth",
    heading = 0,
    debugPoly = Config.Debug,
    minZ=-50.0,
    maxZ=-48.6,
}, {
    options = {
        {
            type = "client",
            event = "Butter-Methlab:client:makemeth",
            icon = 'fas fa-example',
            label = 'Pack Meth',
        }
    },
    distance = 2.5, 
  })