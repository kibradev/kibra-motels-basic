local QBCore = exports['qb-core']:GetCoreObject()

local MotelsBlip = false
local MotelBlips = {}

Citizen.CreateThread(function()
    while true do
        local PlayerPed = PlayerPedId() 
        local PlayerCoord = GetEntityCoords(PlayerPed)

        for Motel = 1, #KIBRA.Motels, 1 do
            local MotelDistance = GetDistanceBetweenCoords(PlayerCoord, KIBRA.Motels[Motel].ReceptionCoord, false)
            if MotelDistance <= 95.0 then
                for RoomNo = 1, #KIBRA.Motels[Motel].MotelRooms, 1 do
                    local MotelDoor = GetClosestObjectOfType(KIBRA.Motels[Motel].MotelRooms[RoomNo].DoorCoord.x, KIBRA.Motels[Motel].MotelRooms[RoomNo].DoorCoord.y, KIBRA.Motels[Motel].MotelRooms[RoomNo].DoorCoord.z, 1.2, KIBRA.Motels[Motel].DoorHash, false, false, false)
                    if DoesEntityExist(MotelDoor) then
                        if KIBRA.Motels[Motel].MotelRooms[RoomNo].DoorLock then
                            SetEntityHeading(MotelDoor, KIBRA.Motels[Motel].MotelRooms[RoomNo].DoorHeading)
                        end
                    end
                    FreezeEntityPosition(MotelDoor, KIBRA.Motels[Motel].MotelRooms[RoomNo].DoorLock)
                    Citizen.Wait(1)
                end
            end
            Citizen.Wait(100)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local Sleep = 2000
        local PlayerCoord = GetEntityCoords(PlayerPedId()) 
        for i = 1, #KIBRA.Elevator, 1 do
            for Elevator = 1, #KIBRA.Elevator[i] do
                local ElevatorDist = #(PlayerCoord - KIBRA.Elevator[i][Elevator].Coord)
                if ElevatorDist <= 3 then
                    Sleep = 5
                    QBCore.Functions.DrawText3D(KIBRA.Elevator[i][Elevator].Coord.x, KIBRA.Elevator[i][Elevator].Coord.y, KIBRA.Elevator[i][Elevator].Coord.z, '~g~[E] - ~w~ Asansör')
                    if IsControlJustReleased(0, 38) then
                        ElevatorMenu(i)
                    end
                end
            end
        end
        Citizen.Wait(Sleep)
    end
end)

function ElevatorMenu(x)
        local elements = {}
        for i = 1, #KIBRA.Elevator[x] do
        table.insert(elements, {label = KIBRA.Elevator[x][i].Text, value = KIBRA.Elevator[x][i].Coord})
        end
        QBCore.UI.Menu.CloseAll()
        QBCore.UI.Menu.Open('default', GetCurrentResourceName(), 'KibraDevWorks', {
            title    = "Asansör",
            align    = 'top-left',
            elements = elements
        }, function(data, menu)
            Teleport(data.current.value)
        end, function(data, menu)
            menu.close()
        end)
end

function Teleport(Coord)
    local PlayerPed = PlayerPedId()
    SetEntityCoords(PlayerPed, Coord.x, Coord.y, Coord.z, true)
end

RegisterNetEvent('kibra-motels:client:ShowMotelBlips', function()
    if not MotelsBlip then
        MotelsBlip = true
        for i = 1, #KIBRA.Motels, 1 do 
            MotelBlipCreate(KIBRA.Motels[i].ReceptionCoord.x, KIBRA.Motels[i].ReceptionCoord.y, KIBRA.Motels[i].ReceptionCoord.z, KIBRA.Motels[i].BlipType, KIBRA.Motels[i].BlipSize, KIBRA.Motels[i].BlipColor, KIBRA.Motels[i].MotelName)
        end
        QBCore.Functions.Notify('Motel bliplerini açtınız!', 'success')
    else
        MotelsBlip = false
        for k, v in pairs(MotelBlips) do
            RemoveBlip(v)
        end
        QBCore.Functions.Notify('Motel bliplerini kapattınız!', 'error')
    end
end)



RegisterCommand('blip', function()
    TriggerEvent('kibra-motels:client:ShowMotelBlips')
end)

function MotelBlipCreate(x,y,z, Type, Scale, Color, BlipName)
    local blip = AddBlipForCoord(x,y,z)
    SetBlipSprite(blip, Type)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, Scale)
    SetBlipColour(blip, Color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(BlipName)
    EndTextCommandSetBlipName(blip)
    table.insert(MotelBlips, blip)
end

Citizen.CreateThread(function()
    for MotelPed = 1, #KIBRA.Motels, 1 do
        RequestModel(GetHashKey(KIBRA.Motels[MotelPed].ReceptionNPC))
        while not HasModelLoaded(GetHashKey(KIBRA.Motels[MotelPed].ReceptionNPC)) do
            Wait(1000)
        end
        RecepsiyonNPC = CreatePed(26, KIBRA.Motels[MotelPed].ReceptionNPC, KIBRA.Motels[MotelPed].ReceptionCoord.x, KIBRA.Motels[MotelPed].ReceptionCoord.y, KIBRA.Motels[MotelPed].ReceptionCoord.z, KIBRA.Motels[MotelPed].ReceptionNPCHeading, true, true)
        FreezeEntityPosition(RecepsiyonNPC, true)
        SetPedCombatAttributes(RecepsiyonNPC, 46, true)               
        SetPedFleeAttributes(RecepsiyonNPC, 0, 0)               
        SetBlockingOfNonTemporaryEvents(RecepsiyonNPC, true)
        SetEntityAsMissionEntity(RecepsiyonNPC, true, true)
        SetEntityInvincible(RecepsiyonNPC, true)
        FreezeEntityPosition(RecepsiyonNPC, true)
    end
end)

Citizen.CreateThread(function()
    while true do
        local Sleep = 2000
        local PlayerPed = PlayerPedId() 
        local PlayerCoord = GetEntityCoords(PlayerPed)
        
        for Motel = 1, #KIBRA.Motels, 1 do
            local DistanceMotels = #(PlayerCoord - KIBRA.Motels[Motel].ReceptionCoord)
            if DistanceMotels < 2.5 then
                Sleep = 5
                QBCore.Functions.DrawText3D(KIBRA.Motels[Motel].ReceptionCoord.x, KIBRA.Motels[Motel].ReceptionCoord.y, KIBRA.Motels[Motel].ReceptionCoord.z + 2.0, '~r~E~w~ - '..KIBRA.Motels[Motel].RecepsiyonName)
                if IsControlJustReleased(0, 38) then
                    if KIBRA.BillBlock then
                        QBCore.Functions.TriggerCallback('kibra-base:server:FaturaKontrol', function(fatura)
                            local BillCount = 0
                            for k,v in pairs(fatura) do
                                BillCount = v.amount
                            end

                            if BillCount >= KIBRA.InvoiceAmount then
                                QBCore.Functions.Notify(KIBRA.InvoiceAmount..'$ dan fazla ödenmemiş faturanız bulunmaktadır. Faturalarınızı ödemeden bir motel odası kiralayamazsınız!')
                            else
                                MotelManagamentMenu(Motel)
                            end
                        end)
                    else
                        MotelManagamentMenu(Motel)
                    end
                end
            end
        end
        Citizen.Wait(Sleep)
    end
end)

Citizen.CreateThread(function()
    while true do
        local Sleep = 2000
        local PlayerPed = PlayerPedId() 
        local PlayerCoord = GetEntityCoords(PlayerPed) 
        for Motel = 1, #KIBRA.Motels, 1 do
            for MotelRoom = 1, #KIBRA.Motels[Motel].MotelRooms, 1 do
                local DoorDistance = #(PlayerCoord - KIBRA.Motels[Motel].MotelRooms[MotelRoom].DoorCoord)
                local StashDistance = #(PlayerCoord - KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord)
                local WardrobeDistance = #(PlayerCoord - KIBRA.Motels[Motel].MotelRooms[MotelRoom].Wardrobe)
                if not KIBRA.ResmonOptimize then
                    if DoorDistance < 4.5 then
                        Sleep = 5
                        DrawMarker(2, KIBRA.Motels[Motel].MotelRooms[MotelRoom].DoorCoord.x, KIBRA.Motels[Motel].MotelRooms[MotelRoom].DoorCoord.y, KIBRA.Motels[Motel].MotelRooms[MotelRoom].DoorCoord.z - 0.3, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 32, 236, 54, 100, 0, 0, 0, 1, 0, 0, 0)
                        QBCore.Functions.DrawText3D(KIBRA.Motels[Motel].MotelRooms[MotelRoom].DoorCoord.x, KIBRA.Motels[Motel].MotelRooms[MotelRoom].DoorCoord.y, KIBRA.Motels[Motel].MotelRooms[MotelRoom].DoorCoord.z, '~w~Oda Numara: ~g~['..MotelRoom..']')
                    end

                    if StashDistance < 2 then
                        Sleep = 5
                        DrawMarker(2, KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.x, KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.y, KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.z - 0.3, 0, 0, 0, 0, 0, 0, 0.3, 0.3, 0.3, 32, 236, 54, 100, 0, 0, 0, 1, 0, 0, 0)
                        if KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashLock then
                            Sleep = 5 
                            QBCore.Functions.DrawText3D(KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.x, KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.y, KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.z, 'Kilitli')
                        else
                            Sleep = 5 
                            QBCore.Functions.DrawText3D(KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.x, KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.y, KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord.z, '~g~[E]~w~ - Depo')
                            if IsControlJustReleased(0, 38) then
                                TriggerServerEvent("inventory:server:OpenInventory", "stash", "Motel_"..Motel..'_'..MotelRoom)
                                TriggerEvent("inventory:client:SetCurrentStash", "Motel_"..Motel..'_'..MotelRoom)
                            end
                        end
                    end
                else
                    if StashDistance < 2 then
                        if not KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashLock then
                            Sleep = 5 
                            if IsControlJustReleased(0, 38) then
                                TriggerServerEvent("inventory:server:OpenInventory", "stash", "Motel_"..Motel..'_'..MotelRoom)
                                TriggerEvent("inventory:client:SetCurrentStash", "Motel_"..Motel..'_'..MotelRoom)
                            end
                        end
                    end
                end
                
                if WardrobeDistance < 1.5 then
                    Sleep = 5
                    DrawMarker(2, KIBRA.Motels[Motel].MotelRooms[MotelRoom].Wardrobe.x, KIBRA.Motels[Motel].MotelRooms[MotelRoom].Wardrobe.y, KIBRA.Motels[Motel].MotelRooms[MotelRoom].Wardrobe.z - 0.3, 0, 0, 0, 0, 0, 0, 0.3, 0.3, 0.3, 32, 236, 54, 100, 0, 0, 0, 1, 0, 0, 0)
                    QBCore.Functions.DrawText3D(KIBRA.Motels[Motel].MotelRooms[MotelRoom].Wardrobe.x, KIBRA.Motels[Motel].MotelRooms[MotelRoom].Wardrobe.y, KIBRA.Motels[Motel].MotelRooms[MotelRoom].Wardrobe.z, '~g~[E]~w~ - Dolap')
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.4)
                        TriggerEvent('qb-clothing:client:openOutfitMenu')
                    end
                end
            end
        end
        Citizen.Wait(Sleep)
    end
end)

RegisterNetEvent('kibra-motels:client:MotelUseKey', function(MotelRoomId, MotelRoomKeyData)
    MotelKeyUse(MotelRoomId, MotelRoomKeyData)
end)

function MotelKeyUse(x,y)
    local PlayerCoord = GetEntityCoords(PlayerPedId())
    for Motel = 1, #KIBRA.Motels, 1 do
        for MotelRoom = 1, #KIBRA.Motels[Motel].MotelRooms, 1 do
            local MotelDoor = #(PlayerCoord - KIBRA.Motels[Motel].MotelRooms[MotelRoom].DoorCoord)
            local MotelStash = #(PlayerCoord - KIBRA.Motels[Motel].MotelRooms[MotelRoom].StashCoord)
            local MotelKeyData = KIBRA.Motels[Motel].MotelRooms[MotelRoom].KeyInfo 
            local MotelRoomInfo = Motel..'_'..MotelRoom
            if MotelDoor <= 1.5 then

                if KIBRA.MotelKeyData then
                    if MotelKeyData == y then
                        QBCore.Functions.Notify('Doğru')
                    else
                        QBCore.Functions.Notify('Yanlış')
                    end
                else
                    if Motel..'_'..MotelRoom == x then
                        MotelDoorLock(Motel, MotelRoom)
                    else
                        QBCore.Functions.Notify('Bu anahtar bu kapıya ait değil!', 'error')
                    end
                end
            end

            if MotelStash <= 1.5 then
                if Motel..'_'..MotelRoom == x then
                    MotelStashLock(Motel, MotelRoom)
                else
                    QBCore.Functions.Notify('Bu anahtar bu depoya ait değil!', 'error')
                end
            end

        end
    end
end

function MotelManagamentMenu(Motel) 
    local elements = {
		{label = "Oda Yönetim", value = 'motelyonetim'},
        {label = "Motel Resepsiyon", value = 'resepsiyon'},
	}
	QBCore.UI.Menu.CloseAll()
	QBCore.UI.Menu.Open('default', GetCurrentResourceName(), 'KibraDevWorks', {
		title    = KIBRA.Motels[Motel].MotelName..' - Hoşgeldiniz',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		if data.current.value == 'motelyonetim' then
			MotelMenu(Motel)
		elseif data.current.value == 'resepsiyon' then
            RecepsiyonMenu(Motel)
		end
	end, function(data, menu)
		menu.close()
	end)
end


RegisterNetEvent('kibra-motels:client:LeaveMotel', function()
    QBCore.Functions.TriggerCallback('kibra-motels:server:MotelInfo', function(MotelData)
        for k,v in pairs(MotelData) do
            TriggerServerEvent('kibra-motels:server:LeaveMotel', v.motelid, v.room_no)
        end
    end)
end)

RegisterNetEvent('kibra-motels:client:CopyKey', function()
    QBCore.Functions.TriggerCallback('kibra-motels:server:MotelInfo', function(MotelData)
        for k,v in pairs(MotelData) do
            TriggerServerEvent('kibra-motels:server:CopyKey', v.room_no, v.motelid, v.roomkeydata)
        end
    end)
end)

RegisterNetEvent('kibra-motels:client:MotelDoorLockOpen', function(MotelNo, MotelRoomId, State)
    KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].DoorLock = State
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5.0, 'kapi', 0.7)
end)

RegisterNetEvent('kibra-motels:client:MotelStashLockOpen', function(MotelNo, MotelRoomId, State)
    KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].StashLock = State
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5.0, 'kapi', 0.7)
end)

function MotelDoorLock(MotelNo, MotelRoomId)
    RequestAnimDict("anim@mp_player_intmenu@key_fob@")
    while not HasAnimDictLoaded("anim@mp_player_intmenu@key_fob@") do
        Citizen.Wait(1)
    end
    TaskPlayAnim(PlayerPedId(), "anim@mp_player_intmenu@key_fob@", "fob_click", 8.0, 8.0, 1000, 1, 1, 0, 0, 0)
    Citizen.Wait(500)
    ClearPedTasks(PlayerPedId())
    TriggerServerEvent("kibra-motels:server:MotelDoorLock", MotelNo, MotelRoomId, not KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].DoorLock)
end

function MotelStashLock(MotelNo, MotelRoomId)
    RequestAnimDict("anim@mp_player_intmenu@key_fob@")
    while not HasAnimDictLoaded("anim@mp_player_intmenu@key_fob@") do
        Citizen.Wait(1)
    end
    TaskPlayAnim(PlayerPedId(), "anim@mp_player_intmenu@key_fob@", "fob_click", 8.0, 8.0, 1000, 1, 1, 0, 0, 0)
    Citizen.Wait(500)
    ClearPedTasks(PlayerPedId())
    TriggerServerEvent('kibra-motels:server:MotelStashLock', MotelNo, MotelRoomId, not KIBRA.Motels[MotelNo].MotelRooms[MotelRoomId].StashLock)
end

function MotelMenu(Motel)
    QBCore.Functions.TriggerCallback('kibra-motels:server:MotelCheck', function(isOwnMotel)
        QBCore.Functions.TriggerCallback('kibra-motels:server:MotelInfo', function(MotelInfo)
            for k,v in pairs(MotelInfo) do
                if isOwnMotel then
                    local elements = {
                        {label = "Motel Oda No: "..v.room_no},
                        {label = "Motel Odasını İptal Et", value = 'motelleave'},
                        {label = "Yedek Anahtar Çıkar", value = 'copykey'},
                    }
                    QBCore.UI.Menu.CloseAll()
                    QBCore.UI.Menu.Open('default', GetCurrentResourceName(), 'KibraDevWorks', {
                        title    = KIBRA.Motels[Motel].MotelName..' - Oda Yönetimi',
                        align    = 'top-left',
                        elements = elements
                    }, function(data, menu)
                        if data.current.value == 'motelleave' then
                            TriggerEvent('kibra-motels:client:LeaveMotel')
                            QBCore.UI.Menu.CloseAll()
                        elseif data.current.value == 'copykey' then
                            TriggerEvent('kibra-motels:client:CopyKey')
                            QBCore.UI.Menu.CloseAll()
                        end
                    end, function(data, menu)
                        menu.close()
                    end)
                else
                    QBCore.Functions.Notify('Kiralanmış Motel odanız yok!', 'error')
                end
            end
        end)
    end)
end 

function RecepsiyonMenu(Motel)
    local elements = {}
    for MotelRoom = 1, #KIBRA.Motels[Motel].MotelRooms do
        table.insert(elements, { label = "Motel Odası - "..MotelRoom..' - '..KIBRA.Motels[Motel].MotelPrice..'$', value = (KIBRA.Motels[Motel].MotelRooms[MotelRoom].Owner == nil and Motel .. '_' .. MotelRoom or 'notFree')})
        QBCore.UI.Menu.CloseAll()
        QBCore.UI.Menu.Open('default', GetCurrentResourceName(), 'KibraDevWorks', {
            title    = KIBRA.Motels[Motel].MotelName,
            align    = 'top-left',
            elements = elements
        }, function(data, menu)
            QBCore.Functions.TriggerCallback('kibra-motels:server:MotelCheck', function(MotelIsOwn)
                if not KIBRA.MultiMotel then
                    if not MotelIsOwn then
                        if KIBRA.Motels[Motel].MotelRooms[MotelRoom].Owner == nil then
                            TriggerServerEvent('kibra-motels:server:BuyMotel', data.current.value, KIBRA.Motels[Motel].MotelPrice, Motel)
                            QBCore.UI.Menu.CloseAll()
                        else
                            QBCore.Functions.Notify('Satın almaya çalıştığınız oda, başka biri tarafından kiralandı!', 'error')
                        end
                    else
                        QBCore.Functions.Notify('Kiralamış olduğunuz bir motel odası zaten var!', 'error')
                    end
                else
                    if KIBRA.Motels[Motel].MotelRooms[MotelRoom].Owner == nil then
                        TriggerServerEvent('kibra-motels:server:BuyMotel', data.current.value, KIBRA.Motels[Motel].MotelPrice, Motel)
                        QBCore.UI.Menu.CloseAll()
                    else
                        QBCore.Functions.Notify('Satın almaya çalıştığınız oda, başka biri tarafından kiralandı!', 'error')
                    end
                end
            end)
            QBCore.UI.Menu.CloseAll()
        end, function(data, menu)
            menu.close()
        end)
    end
end

