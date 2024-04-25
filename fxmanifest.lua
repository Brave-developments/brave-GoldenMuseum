fx_version 'cerulean'
game 'gta5'

description 'brave-GoldenMuseum | by brave'
version '1.0.0'

dependencies {
    'qb-target',
    'memorygame'
} 

shared_script 'config.lua'
client_script 'client/main.lua'
server_script 'server/main.lua'

lua54 'yes'