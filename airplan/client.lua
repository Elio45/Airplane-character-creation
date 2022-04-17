ESX = nil
local disablecontrols = false
Citizen.CreateThread(function()

	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

end)
Citizen.CreateThread(function()
	while true do  
	  Citizen.Wait(0)
		if disablecontrols == true then
		  DisableControlAction(0, 142, true) -- MeleeAttackAlternate
		  DisableControlAction(0, 24,  true) -- Shoot 
		  DisableControlAction(0, 92,  true) -- Shoot in car
		  DisableControlAction(0, 24,  true)
		  DisableControlAction(0, 25,  true)
		  DisableControlAction(0, 45,  true)
		  DisableControlAction(0, 76,  true)
		  DisableControlAction(0, 102,  true)
		  DisableControlAction(0, 278,  true)
		  DisableControlAction(0, 279,  true)
		  DisableControlAction(0, 280,  true)
		  DisableControlAction(0, 281,  true)
		  DisableControlAction(0, 140, true) -- Attack
		  DisableControlAction(0, 24, true) -- Attack
		  DisableControlAction(0, 25, true) -- Attack
		  DisableControlAction(2, 24, true) -- Attack
		  DisableControlAction(2, 257, true) -- Attack 2
		  DisableControlAction(2, 25, true) -- Aim
		  DisableControlAction(2, 263, true) -- Melee Attack 1
		  DisableControlAction(2, Keys['R'], true) -- Reload
		  DisableControlAction(2, Keys['LEFTALT'], true)
		  DisableControlAction(2, Keys['TOP'], true) -- Open phone (not needed?)
		  DisableControlAction(2, Keys['Q'], true) -- Cover
		  DisableControlAction(2, Keys['TAB'], true) -- Select Weapon
		  DisableControlAction(2, Keys['F1'], true) -- Disable phone
		  DisableControlAction(2, Keys['F2'], true) -- Inventory
		  DisableControlAction(2, Keys['F3'], true) -- Animations
		  DisableControlAction(2, Keys['F6'], true)
		  DisableControlAction(2, Keys['F7'], true)
		  DisableControlAction(2, Keys['F9'], true)
		  DisableControlAction(2, Keys['F10'], true)
		  DisableControlAction(2, Keys['Y'], true)
		  DisableControlAction(0, Keys['A'], true)
		  DisableControlAction(0, Keys['D'], true)
		  DisableControlAction(2, Keys["~"], true) 
		  DisableControlAction(2, Keys["X"], true)
		  DisableControlAction(0, Keys["X"], true)  
		  DisableControlAction(2, Keys["T"], true)
		  DisableControlAction(0, Keys["T"], true) 
		  DisableControlAction(2, 49, true)
		  DisableControlAction(0, 49, true) 
  end
	end
  end)
Citizen.CreateThread(function()
	SetManualShutdownLoadingScreenNui(true)
Citizen.Wait(300)
while ESX.IsPlayerLoaded() == false do
Citizen.Wait(1)
print(ESX.IsPlayerLoaded() )
print('notloaded')
end
print('loaded')



Citizen.Wait(3000)

print('start')
SetManualShutdownLoadingScreenNui(true)
while GetIsLoadingScreenActive() == true do
Citizen.Wait(1)
print(GetIsLoadingScreenActive())
print('jest loadingscreen')
end
print('nie ma loadingscreena')
disablecontrols = true
print('nowa')

ShutdownLoadingScreenNui()
ESX.Game.SpawnVehicle(GetHashKey('shamal'), vector3(-1641.28, -4894.00, 327.15), 319.6 , function(vehicle)
	print('auto')
	SetPedIntoVehicle(PlayerPedId(), vehicle, 2)
	RequestModel(GetHashKey('a_m_y_business_02'))
while not HasModelLoaded(GetHashKey('a_m_y_business_02')) do
Citizen.Wait(0)
end
	kierowca = CreatePedInsideVehicle(vehicle, 4, GetHashKey('a_m_y_business_02'), -1, true, true)
	TaskPlaneMission(kierowca, vehicle, 0, 0,  -185.24, -1994.43, 379.57, 1, 1.0, 0, 2.4, 2313.3, 11.3)
	print('start misji')
	SetVehicleForwardSpeed(vehicle, 72.2)
	print('2')
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 72.2)
	print('2')
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 72.2)
	print('2')
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 72.2)
	print('2')
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 72.2)
	print('2')
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 72.2)
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 72.2)
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 72.2)
	Citizen.Wait(2000)
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 72.2)
	Citizen.Wait(2000)
	print('62')
	SetVehicleForwardSpeed(vehicle, 62.2)
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 50.2)
	print('50')
	Citizen.Wait(2000)
	SetVehicleForwardSpeed(vehicle, 42.2)
	print('32')
	Citizen.Wait(3000)


	SetVehicleForwardSpeed(vehicle, 35.2)
	TaskPlaneLand(kierowca, vehicle, -950.55, -3359.43, 13.5, -1645.4, -2961.7, 13.5)
	while GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId(), true), -1711.10, -2925.65, 13.94, true) > 10 do
		Citizen.Wait(10)
	end
	DoScreenFadeOut(800)
	Citizen.Wait(2000)
	DeleteEntity(vehicle)
	DeleteEntity(kierowca)
	Citizen.Wait(2500)
	ESX.Game.Teleport(PlayerPedId(),vector3(-1044.83, -2750.02, 21.36))
	Citizen.Wait(1000)
	DoScreenFadeIn(2800)
	disablecontrols = false
	end)


end)
