fx_version 'cerulean'
game 'gta5'


author 'butterchilly'
description 'Advanced Meth Lab Script For QBCore'
version '1.5.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

server_scripts {
    'base/server.lua',
    'server/*.lua'
}

client_script {
    'base/client.lua',
    'client/*.lua'
}

lua54 'yes' 


