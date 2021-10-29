local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

--------------------------------------
--------------- SQL ------------------
--------------------------------------
vRP.prepare('Doug/TrocaPersonagem','UPDATE vrp_user_ids SET user_id = @IdPlayer WHERE user_id = @user_id')
vRP.prepare('Doug/TrocaPersonagemSegundo','UPDATE vrp_user_ids SET user_id = @IdStaff WHERE user_id = @user_id')

RegisterCommand(Doug.ComandoToogle,function(source,args)
    local source = source
    local user_id = vRP.getUserId(source)
    if not Doug.UsarDoisPersonagens then 
        for k, v in pairs(DougPermStaff) do
            if vRP.hasGroup(user_id,v.PermUm) then 
                TriggerClientEvent('Doug:SaiuServicoStaff',source)
                vRP.removeUserGroup(user_id,v.PermUm)
                vRP.addUserGroup(user_id,v.PermDois)
            elseif vRP.hasGroup(user_id,v.PermDois) then
                vRP.removeUserGroup(user_id,v.PermDois)
                vRP.addUserGroup(user_id,v.PermUm)
                TriggerClientEvent('Doug:EntrouServicoStaff',source)
            end
        end
    else 
        for k, v in pairs(DougIds) do
            if user_id == v.IdStaff then 
                vRP.execute('Doug/TrocaPersonagem',{user_id = user_id,IdPlayer = v.IdPlayer})
                DropPlayer(source,'Seu personagem SECUNDÁRIO carregou!')
            elseif user_id == v.IdPlayer then 
                vRP.execute('Doug/TrocaPersonagemSegundo',{user_id = user_id,IdStaff = v.IdStaff})
                DropPlayer(source,'Seu personagem STAFF carregou!')
            end
        end
    end
end)

RegisterCommand(Doug.ComandoToogleGeral,function(source,args)
    local source = source
    local user_id = vRP.getUserId(source)
    if Doug.UsarToogleGeral and Doug.UsarComandoToogle then 
        for k, v in pairs(DougPermServ) do
            if vRP.hasGroup(user_id,v.PermUm) then 
                local grupo = v.PermUm
                TriggerClientEvent('Doug:SaiuServico',source)
                vRP.removeUserGroup(user_id,v.PermUm)
                vRP.addUserGroup(user_id,v.PermDois)
            elseif vRP.hasGroup(user_id,v.PermDois) then
                local grupo = v.PermUm
                vRP.removeUserGroup(user_id,v.PermDois)
                vRP.addUserGroup(user_id,v.PermUm)
                TriggerClientEvent('Doug:EntrouServico',source)
            end
        end
    end
end)

RegisterServerEvent('Doug:BateuPonto')
AddEventHandler('Doug:BateuPonto',function(data)
    local source = source
    local user_id = vRP.getUserId(source)
    if Doug.UsarToogleGeral then 
        for k, v in pairs(DougPermServ) do
            if vRP.hasGroup(user_id,v.PermUm) then 
                local grupo = v.PermUm
                TriggerClientEvent('Doug:SaiuServico',source)
                vRP.removeUserGroup(user_id,v.PermUm)
                vRP.addUserGroup(user_id,v.PermDois)
            elseif vRP.hasGroup(user_id,v.PermDois) then
                local grupo = v.PermUm
                vRP.removeUserGroup(user_id,v.PermDois)
                vRP.addUserGroup(user_id,v.PermUm)
                TriggerClientEvent('Doug:EntrouServico',source)
            end
        end
    end
end)

