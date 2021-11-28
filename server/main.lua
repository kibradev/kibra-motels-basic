exports.ghmattimysql:ready(function()
    local MotelData = exports.ghmattimysql:executeSync('SELECT * FROM kibra_motels')
    for MotelDataInfo = 1, #MotelData, 1 do
        local MotelRooms = json.decode(MotelData[MotelDataInfo].room_data)
        local MotelId = MotelData[MotelDataInfo].motelid
        local MotelRoomNo = MotelData[MotelDataInfo].room_no
        KIBRA.Motels[MotelId].MotelRooms[MotelRoomNo].Owner = MotelData[MotelDataInfo].room_owner
        KIBRA.Motels[MotelId].MotelRooms[MotelRoomNo].DoorLock = MotelRooms.door.lock
        KIBRA.Motels[MotelId].MotelRooms[MotelRoomNo].StashLock = MotelRooms.stash.lock
        KIBRA.Motels[MotelId].MotelRooms[MotelRoomNo].KeyInfo = MotelData[MotelDataInfo].roomkeydata
    end
    print("^2[Kibra-Motels] - ^7Motel Verileri Yuklendi")
end)

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
    local RandomKeyData = 'KBR'..math.random(111111,999999)
    if PlayerMoney >= Price then
        local DataX = exports.ghmattimysql:executeSync('SELECT bought FROM kibra_motels WHERE id = @RoomIdd', { ['@RoomIdd'] = MotelRoomId })
        if #DataX > 0 then
            if DataX[1].bought == 0 then
                Player.Functions.RemoveMoney('cash', Price)
                KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].Owner = Player.PlayerData.citizenid
                KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].KeyInfo = RandomKeyData
                exports.ghmattimysql:execute('UPDATE kibra_motels set room_owner = @RoomOwner, roomkeydata = @RoomKeyData, motelid = @MotelId, bought = @RoomBought WHERE room_no = @RoomId', {
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
                    MotelNo = MotelNo
                }
                Player.Functions.AddItem("motelkeys", 1, nil, info)
                TriggerClientEvent('QBCore:Notify', src, 'Başarıyla bir motel odası kiraladınız!', 'success')
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
    if xItem.amount >= 1 and xItem ~= nil then
        if xItem.info.MotelId == MotelRoomId then
            exports.ghmattimysql:execute('UPDATE kibra_motels set room_owner = @RoomOwner, roomkeydata = @RoomKeyData, motelid = @MotelId, bought = @RoomBought WHERE room_no = @RoomId', {
                ['@RoomOwner'] = nil,
                ['@RoomKeyData'] = nil,
                ["@MotelId"] = nil,
                ["@RoomBought"] = 0,
                ["@RoomId"] = MotelRoomId
            })
            KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].Owner = nil
            KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].KeyInfo = nil
            Player.Functions.RemoveItem(xItem.name, 1, nil)
            TriggerClientEvent('QBCore:Notify', source, 'Motel odanızı başarıyla iptal ettiniz!', 'success')
        else
            TriggerClientEvent('QBCore:Notify', source, 'Motel anahtarı odanıza ait değil!', 'error')
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

RegisterNetEvent('kibra-motels:server:DepoLockBuy', function()
    local Player = QBCore.Functions.GetPlayer(source) 
    local xMoney = Player.PlayerData.money["cash"]
    if xMoney == KIBRA.StashLockPrice then
        Player.Functions.AddItem("depolock", 1)
    else
        TriggerClientEvent('QBCore:Notify', source, 'Depo Kilidi alacak kadar paranız yok!', 'error')
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
    local Player = QBCore.Functions.GetPlayer(source)
    local PlayerMoney = Player.PlayerData.money["cash"]
    local MotelKeyItem = Player.Functions.GetItemByName("motelkeys")
    if MotelKeyItem == nil or MotelKeyItem.amount <= KIBRA.CopyKeyLimit then
        if PlayerMoney >= KIBRA.CopyKeyPrice then
            local info = {
                MotelId = MotelRoomId,
                MotelName = KIBRA.Motels[MotelName].MotelName,
                RoomKeyData = KeyData,
                MotelNo = MotelName
            } 
            Player.Functions.AddItem("motelkeys", 1, nil, info)
            TriggerClientEvent('QBCore:Notify', source, 'Başarıyla Yedek Anahtar çıkarttınız!', 'success')
        else
            TriggerClientEvent('QBCore:Notify', source, 'Yedek Anahtar çıkaracak kadar paranız yok!', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', source, 'Maksimum sayıda Yedek Anahtar çıkarttınız!', 'error')
    end
end)

QBCore.Functions.CreateCallback('kibra-motels:server:MotelCheck', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local PlayerMotel = exports.ghmattimysql:executeSync('SELECT * FROM kibra_motels', {})
    for k,v in pairs(PlayerMotel) do
        if v.room_owner == Player.PlayerData.citizenid then
            cb(true)
        else
            cb(false) 
        end
    end
end)

QBCore.Functions.CreateCallback('kibra-motels:server:MotelInfo', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local PlayerMotel = exports.ghmattimysql:executeSync('SELECT * FROM kibra_motels WHERE room_owner = @RoomOwner', {
        ["@RoomOwner"] = Player.PlayerData.citizenid
    })
    cb(PlayerMotel)
end)


AddEventHandler('onResourceStarting', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    local MotelData = exports.ghmattimysql:executeSync('SELECT * FROM kibra_motels')
    for MotelDataInfo = 1, #MotelData, 1 do
        local MotelRooms = json.decode(MotelData[MotelDataInfo].room_data)
        local MotelId = MotelData[MotelDataInfo].motelid
        local MotelRoomNo = MotelData[MotelDataInfo].room_no
        KIBRA.Motels[MotelId].MotelRooms[MotelRoomNo].Owner = MotelData[MotelDataInfo].room_owner
        KIBRA.Motels[MotelId].MotelRooms[MotelRoomNo].DoorLock = MotelRooms.door.lock
        KIBRA.Motels[MotelId].MotelRooms[MotelRoomNo].StashLock = MotelRooms.stash.lock
        KIBRA.Motels[MotelId].MotelRooms[MotelRoomNo].KeyInfo = MotelData[MotelDataInfo].roomkeydata
    end
    print("^2[Kibra-Motels] - ^7Motel Verileri Yuklendi")
end)
  
  

