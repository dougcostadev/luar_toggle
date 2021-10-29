fx_version 'cerulean'
game {'gta5'}

author 'Douglas Costa | Discord: Doug#1766 | CEO - Luar Inc.'
description 'Sistema de toogle com possibilidade de criar dois personagem staff'
version '1.0.0'

ui_page 'andromeda/luar.html'

client_scripts {
    '@vrp/lib/utils.lua',
    'galaxy/galaxymoon.lua',
    'moon.lua'
}
server_scripts {
    '@vrp/lib/utils.lua',
    'galaxy/galaxysun.lua',
    'sun.lua'
}

files {
    'andromeda/luar.html',
    'andromeda/core/luar.js',
    'andromeda/star/luar.css'
}