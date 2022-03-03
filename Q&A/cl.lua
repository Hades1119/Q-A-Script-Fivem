RegisterCommand("?", function(source, args)
    TriggerServerEvent("?", table.concat(args, " "))
end)

RegisterCommand("a", function(source, args)
    TriggerServerEvent("a", table.concat(args, " "))
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedInVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(-1, false), false) then
            print("in a vehicle")
        end
    end
end)