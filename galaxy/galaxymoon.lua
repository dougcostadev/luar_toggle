Luar = {
    UsarBlip = false,
    LocalBlip = vec3(160.61, -1000.23, 29.36),
}

AddEventHandler('Doug:SaiuServicoStaff',function(source)
    -- Coloque aqui a forma de notificação da sua base, caso não queira notificação basta comentar a linha abaixo!
    TriggerEvent('Notify','negado','Você saiu de serviço Staff!') 
end)

AddEventHandler('Doug:EntrouServicoStaff',function(source)
    -- Coloque aqui a forma de notificação da sua base, caso não queira notificação basta comentar a linha abaixo!
    TriggerEvent('Notify','sucesso','Você entrou de serviço Staff!') 
end)

AddEventHandler('Doug:SaiuServico',function(source,grupo)
    -- Coloque aqui a forma de notificação da sua base, caso não queira notificação basta comentar a linha abaixo!
    TriggerEvent('Notify','negado','Você saiu de serviço!') 
end)

AddEventHandler('Doug:EntrouServico',function(source)
    -- Coloque aqui a forma de notificação da sua base, caso não queira notificação basta comentar a linha abaixo!
    TriggerEvent('Notify','sucesso','Você entrou de serviço!') 
end)