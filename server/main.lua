local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("motelkeys" , function(source, item)   
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        MotelId = item.info.MotelId
        MotelKeyData = item.info.RoomKeyData
        TriggerClientEvent('kibra-motels:client:MotelUseKey', source, MotelId, MotelKeyData)
    end
end)

RegisterNetEvent('kibra-motels:server:BuyMotel', function(MotelRoomId, Price, MotelNo)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local PlayerMoney = Player.PlayerData.money["cash"]
    local PlayerName = Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
    local MotelsNo, RoomsNo = QBCore.Shared.KeyDataMotel(MotelRoomId)
    local RandomKeyData = 'KBR'..math.random(111111,999999)
    if PlayerMoney >= Price then
        local DataX = exports.oxmysql:executeSync('SELECT bought FROM kibra_motels WHERE room_no = @RoomIdd', { ['@RoomIdd'] = MotelRoomId })
        if #DataX > 0 then
            if DataX[1].bought == 0 then
                Player.Functions.RemoveMoney('cash', Price)
                exports.oxmysql:execute('UPDATE kibra_motels set room_owner = @RoomOwner, roomkeydata = @RoomKeyData, motelid = @MotelId, bought = @RoomBought WHERE room_no = @RoomId', {
                    ['@RoomOwner'] = Player.PlayerData.citizenid,
                    ['@RoomKeyData'] = RandomKeyData,
                    ['@RoomId'] = MotelRoomId,
                    ["@MotelId"] = MotelNo,
                    ["@RoomBought"] = 1
                })
                local info = {
                    MotelId = MotelRoomId,
                    MotelName = KIBRA.Motels[MotelNo].MotelName,
                    RoomKeyData = RandomKeyData,
                    MotelNo = MotelNo,
                    MotelFakeRoomNo = RoomsNo
                }
                Player.Functions.AddItem("motelkeys", 1, nil, info)
                TriggerClientEvent('QBCore:Notify', src, 'Başarıyla bir motel odası kiraladınız!', 'success')
                SendDiscordLog(src, "Motel Odası Satın Aldı! "..PlayerName, "**Citizen ID:**"..Player.PlayerData.citizenid..'\n **License ID: **'..Player.PlayerData.license..'\n **Oda Numarası: **'..MotelRoomId..'\n **Motel:** '..KIBRA.Motels[MotelNo].MotelName..' \n **Ödenilen Oda Ücreti: **: '..Price)
            else 
                TriggerClientEvent('QBCore:Notify', src, 'Bu motel odası başkasına ait!', 'error')
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'Motel odası kiralayacak paranız yok!', 'error')
    end
end)

RegisterNetEvent('kibra-motels:server:LeaveMotel', function(MotelNo, MotelRoomId)
    local Player = QBCore.Functions.GetPlayer(source)
    local xItem = Player.Functions.GetItemByName("motelkeys")
    local MotelOp, MotelRid = QBCore.Shared.KeyDataMotel(MotelRoomId)
    local PlayerName = Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
    if xItem ~= nil then
        if xItem.amount >= 1 then
            if xItem.info.MotelId == MotelOp..'_'..MotelRid then
                exports.oxmysql:execute('UPDATE kibra_motels set room_owner = @RoomOwner, roomkeydata = @RoomKeyData, motelid = @MotelId, bought = @RoomBought WHERE room_no = @RoomId', {
                    ['@RoomOwner'] = nil,
                    ['@RoomKeyData'] = nil,
                    ["@MotelId"] = nil,
                    ["@RoomBought"] = 0,
                    ["@RoomId"] = xItem.info.MotelId
                })
                Player.Functions.RemoveItem(xItem.name, xItem.amount, nil)
                TriggerClientEvent('QBCore:Notify', source, 'Motel odanızı başarıyla iptal ettiniz!', 'success')
                SendDiscordLog(source, "MOTEL ODASINI İPTAL ETTİ "..PlayerName, "**Citizen ID:**"..Player.PlayerData.citizenid..'\n **License ID: **'..Player.PlayerData.license..'\n **Oda Numarası: **'..MotelRoomId..'\n **Motel:** '..KIBRA.Motels[MotelOp].MotelName)
            else
                TriggerClientEvent('QBCore:Notify', source, 'Bu Motel anahtarı odanıza ait değil!', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'Motal odanızı iptal edebilmeniz için motel anahtarına ihtiyacınız var!', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', source, 'Motal odanızı iptal edebilmeniz için motel anahtarına ihtiyacınız var!', 'error')
    end
end)

RegisterNetEvent('kibra-motels:server:MotelDoorLock', function(MotelNo, MotelRoomId, State)
    TriggerClientEvent('kibra-motels:client:MotelDoorLockOpen', -1, MotelNo, MotelRoomId, State)
    KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].DoorLock = State
    if State == not DoorLock then
        TriggerClientEvent('QBCore:Notify', source, 'Motel odasını başarıyla kilitlediniz', 'error')
    else
        TriggerClientEvent('QBCore:Notify', source, 'Motel odasını başarıyla kilidini açtınız!', 'success')
    end
end)

RegisterNetEvent('kibra-motels:server:MotelStashLock', function(MotelNo, MotelRoomId, State)
    KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].StashLock = State
    TriggerClientEvent('kibra-motels:client:MotelStashLockOpen', -1, MotelNo, MotelRoomId, State)
    if State == not locked then
        TriggerClientEvent('QBCore:Notify', source, 'Motel deposunu başarıyla kilitlediniz', 'error')
    else
        TriggerClientEvent('QBCore:Notify', source, 'Motel deposunun kilidini başarıyla açtınız!', 'success')
    end
end)

RegisterNetEvent('kibra-motels:server:CopyKey', function(MotelRoomId, MotelName, KeyData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local PlayerMoney = Player.PlayerData.money["cash"]
    local PlayerName = Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
    local MotelKeyItem = Player.Functions.GetItemByName("motelkeys")
    if MotelKeyItem == nil or MotelKeyItem.amount <= KIBRA.CopyKeyLimit then
        if PlayerMoney >= KIBRA.CopyKeyPrice then
            local info = {
                MotelId = MotelRoomId,
                MotelName = KIBRA.Motels[MotelName].MotelName,
                RoomKeyData = KeyData,
                MotelNo = MotelName,
                MotelFakeRoomNo = string.sub(MotelRoomId, 3)
            } 
            Player.Functions.AddItem("motelkeys", 1, nil, info)
            Player.Functions.RemoveMoney('cash', KIBRA.CopyKeyPrice)
            SendDiscordLog(src, "MOTEL ANAHTARI ÇIKARTTI "..PlayerName, "**Citizen ID:**"..Player.PlayerData.citizenid..'\n **License ID: **'..Player.PlayerData.license..'\n **Oda Numarası: **'..MotelRoomId..'\n **Ödediği Ücret:** '..KIBRA.CopyKeyPrice)
            TriggerClientEvent('QBCore:Notify', src, 'Başarıyla Yedek Anahtar çıkarttınız!', 'success')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Yedek Anahtar çıkaracak kadar paranız yok!', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'Maksimum sayıda Yedek Anahtar çıkarttınız!', 'error')
    end
end)

QBCore.Functions.CreateCallback('kibra-motels:server:MotelCheck', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
     exports.oxmysql:execute('SELECT bought FROM kibra_motels WHERE room_owner = @RoomOwner', { ['@RoomOwner'] = Player.PlayerData.citizenid }, function(result)
        if #result > 0 then
            cb(true)
        else
            cb(false)
        end
    end)
end)

QBCore.Functions.CreateCallback('kibra-motels:server:MotelInfo', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local PlayerMotel = exports.oxmysql:executeSync('SELECT * FROM kibra_motels WHERE room_owner = @RoomOwner', {
        ["@RoomOwner"] = Player.PlayerData.citizenid
    })
    cb(PlayerMotel)
end)

QBCore.Functions.CreateCallback('kibra-motels:server:MotelIsBought', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local PlayerMotel = exports.oxmysql:executeSync('SELECT bought FROM kibra_motels WHERE room_no = @RoomBought', {
        ["@RoomOwner"] = Player.PlayerData.citizenid
    })
    cb(PlayerMotel)
end)

function SendDiscordLog(source, title, message)
    for k, v in ipairs(GetPlayerIdentifiers(source)) do
        if string.match(v, 'discord:') then
            identifierDiscord = v
        end
    end
    local webHook = KIBRA.DiscordWebHookLink
    local embedData = {
        {
            ["title"] = title,
            ["color"] = 25087,
            ["footer"] = {
                ["text"] = os.date("%c"),
            },
            ["description"] = message..'\n **Discord:** <@'..string.sub(identifierDiscord, 9)..'>',
            ["author"] = {
            ["name"] = 'Kibra Motels Log',
            ["icon_url"] = "https://cdn.discordapp.com/attachments/914508952891424808/914509397890301962/62299912.png",
                },
        }
    }
    if KIBRA.DiscordWebHook then
        PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = "Kibra Motels Log",embeds = embedData}), { ['Content-Type'] = 'application/json' })
        Citizen.Wait(100)
    end
end

TriggerEvent('cron:runAt', 18, 00, MotelBilling)

function MotelBilling() 
     exports.oxmysql:execute('SELECT * FROM kibra_motels WHERE bought = 1', {}, function(result)
        if #result > 0 then
            for k,v in ipairs(result) do
                local MotelPlayerInfo = result[k]
                local PlayerCitizenId = QBCore.Functions.GetPlayerByCitizenId(MotelPlayerInfo['room_owner'])
                if KIBRA.Motels[MotelPlayerInfo["motelid"]].MotelRentPayment then
                    TriggerEvent('esx_billing:sendBillAmaOffline', PlayerCitizenId.PlayerData.citizenid, KIBRA.Motels[MotelPlayerInfo["motelid"]].MotelName, "Motel Kirası", KIBRA.Motels[MotelPlayerInfo["motelid"]].MotelRentPrice)
                end
                if KIBRA.MailBilling then
                    TriggerEvent('qb-phone:server:sendNewMailToOffline', PlayerCitizenId.PlayerData.citizenid, {
                        sender = KIBRA.Motels[MotelPlayerInfo["motelid"]].MotelName,
                        subject = "Motel Yönetimi",
                        message = "Merhaba "..PlayerCitizenId.PlayerData.charinfo.firstname..' '..PlayerCitizenId.PlayerData.charinfo.lastname..' Otelimiz tarafından oda kirası fatura olarak bankanıza yansıtılmıştır. Geciktirmemeniz dileğiyle :)'
                    })
                end
             end
        end
    end)
end

