local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

RegisterNetEvent('Doug:SaiuServicoStaff')
RegisterNetEvent('Doug:EntrouServicoStaff')
RegisterNetEvent('Doug:SaiuServico')
RegisterNetEvent('Doug:EntrouServico')

Citizen.CreateThread(function()
	while true do
		local doug = 1000
		if Luar.UsarBlip then
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
            local distance = GetDistanceBetweenCoords(Luar.LocalBlip,x,y,z,true)
			if distance <= 3 then
				doug = 5
				DrawMarker(23,Luar.LocalBlip-0.99, 0, 0, 0, 0, 0, 0, 0.7, 0.7, 0.5, 235, 208, 52, 150, 0, 0, 0, 0)
				if distance <= 1.2 then
					doug = 5
					drawTxt("PRESSIONE  ~p~E~w~  PARA BATER PONTO",4,0.5,0.93,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) then
                        openToogle()
                    end
				end
			end
		end
		Citizen.Wait(doug)
	end
end)

RegisterNUICallback("close",function(data)
	TriggerScreenblurFadeOut(1000)
	SetNuiFocus(false, false)
end)

RegisterNUICallback("bateuponto",function(data)
	TriggerServerEvent('Doug:BateuPonto',source)
	TriggerScreenblurFadeOut(1000)
	SetNuiFocus(false, false)
end)

function openToogle()
	abrir = true
	CreateThread(function()
		SetNuiFocus(true, true)
		TriggerScreenblurFadeIn(1000)
		SendNUIMessage({
			abrir = abrir
		})
	end)
end

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end