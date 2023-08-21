

RegisterNetEvent('Butter-Methlab:client:ChemicalMenu', function()
    exports[Config.Resource_Names.Menu]:openMenu({
        {
            header = 'Chemical Menu',
            icon = 'fas fa-code',
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = 'Start Mixing Chemical',
            txt = '',
            icon = 'fas fa-code-merge',
            params = {
                event = 'Butter-Methlab:client:StartMixingChemical',
                args = {
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
                }
            }
        },  
        {
            header = 'Pack Meth (5)',
            txt = 'Make 5 Meth Together',
            icon = 'fas fa-code-merge',
            params = {
                event = 'Butter-Methlab:client:ingredient_5',
                args = {
		
                }
            }
        },  
        {
            header = 'Pack Meth (10)',
            txt = 'Make 10 Meth Together',
            icon = 'fas fa-code-merge',
            params = {
                event = 'Butter-Methlab:client:ingredient_10',
                args = {
                }
            }
        },  
    })
end)