
local text1 = "Le serveur reboot automatique dans 15 minutes ! A 15h01 / 03h01"
local text2 = "Le serveur reboot automatique dans 10 minutes ! A 15h01 / 03h01"
local text3 = "Le serveur reboot automatique dans 5 minutes  ! A 15h01 / 03h01 \n Pensez à sauvegarder votre position et vous déconnecté !"
local test4 = "test pour avertir"

RegisterServerEvent("restart:checkreboot")

AddEventHandler('restart:checkreboot', function()
	date_local1 = os.date('%H:%M:%S', os.time())
	local date_local = date_local1
	if date_local == '14:45:00' then
		TriggerClientEvent('chatMessage', -1, "REBOOT - SERVEUR", {0, 0, 0}, text1)
	elseif date_local == '14:50:00' then
		TriggerClientEvent('chatMessage', -1, "REBOOT - SERVEUR", {0, 0, 0}, text2)
	elseif date_local == '14:55:00' then
		TriggerClientEvent('chatMessage', -1, "REBOOT - SERVEUR", {0, 0, 0}, test3)
	elseif date_local == '02:45:00' then 
		TriggerClientEvent('chatMessage', -1, "REBOOT - SERVEUR", {0, 0, 0}, text1)
	elseif date_local == '02:50:00' then
		TriggerClientEvent('chatMessage', -1, "REBOOT - SERVEUR", {0, 0, 0}, text2)
	elseif date_local == '02:55:00' then
		TriggerClientEvent('chatMessage', -1, "REBOOT - SERVEUR", {0, 0, 0}, text3)
	end
end)

function restart_server()
	SetTimeout(1000, function()
		TriggerEvent('restart:checkreboot')
		restart_server()
	end)
end
restart_server()