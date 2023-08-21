

RegisterNetEvent('Butter-Methlab:client:ChemicalMenu', function()
    exports[Config.Resource_Names.Menu]:openMenu({
        {
            header = 'Chemical Menu',
            icon = 'fas fa-code',
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = 'Start Mixing Chemical',
            txt = 'Print a message!',
            icon = 'fas fa-code-merge',
            params = {
                event = 'Butter-Methlab:client:StartMixingChemical',
                args = {
		    message = 'This was called by clicking a button'
                }
            }
        },  
    })
end)

RegisterNetEvent('Butter-Methlab:client:makemeth', function()
    exports[Config.Resource_Names.Menu]:openMenu({
        {
            header = 'Meth Menu',
            icon = 'fas fa-code',
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = 'Pack Meth (1)',
            txt = 'Pack 1 Meth',
            icon = 'fas fa-code-merge',
            params = {
                event = 'Butter-Methlab:client:ingredient_1',
                args = {
		    message = 'This was called by clicking a button'
                }
            }
        },  
        {
            header = 'Pack Meth (5)',
            txt = 'Pack 5 Meth',
            icon = 'fas fa-code-merge',
            params = {
                event = 'Butter-Methlab:client:ingredient_5',
                args = {
		    message = 'This was called by clicking a button'
                }
            }
        },  
        {
            header = 'Pack Meth (10)',
            txt = 'Pack 10 Meth',
            icon = 'fas fa-code-merge',
            params = {
                event = 'Butter-Methlab:client:ingredient_10',
                args = {
		    message = 'This was called by clicking a button'
                }
            }
        },  
    })
end)