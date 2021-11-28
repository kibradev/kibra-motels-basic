fx_version "adamant"

game "gta5"

client_script {
    "client/main.lua",
    "shared.lua"
}
server_script {
    "server/main.lua",
    "shared.lua"
}

shared_script "@qb-core/import.lua"

author "kibra#9656"

Description "QBCore Motels Created Kibra"