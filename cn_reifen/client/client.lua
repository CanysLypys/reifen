local player = PlayerPedId()
local fahrzeugkaputt = false

Citizen.CreateThread(function()
    while true do
        Wait(0)
        if IsPedGettingIntoAVehicle(player) or IsPedInAnyVehicle(player, false) then
            reifen()
        end
    end
end)


function reifen()
    local vehicleid = GetVehiclePedIsIn(player, false)

    if IsVehicleTyreBurst(vehicleid, 0, false) and IsVehicleTyreBurst(vehicleid, 1, false) or IsVehicleTyreBurst(vehicleid, 2, false) and IsVehicleTyreBurst(vehicleid, 0, false) or IsVehicleTyreBurst(vehicleid, 4, false) and IsVehicleTyreBurst(vehicleid, 0, false) or IsVehicleTyreBurst(vehicleid, 0, false) and IsVehicleTyreBurst(vehicleid, 5, false) or IsVehicleTyreBurst(vehicleid, 1, false) and IsVehicleTyreBurst(vehicleid, 5, false) then
        TaskLeaveVehicle(player, vehicleid, 0)
            fahrzeugkaputt = true
                if fahrzeugkaputt then
                    if IsPedGettingIntoAVehicle(player) then
                        -- Add a notification "You can't go into the car because your tires are destroyed"
            end
        end
    end
end
