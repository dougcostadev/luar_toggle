Doug = {
    ComandoToogle = 'tooglestaff', -- Comando usado para migrar entre contas.
    UsarDoisPersonagens = true, -- Deixe true se for usar dois personagens para os Staffs, deixe false se for usar apenas ativação/desativação de poderes
    UsarToogleGeral = true,
    UsarComandoToogle = false,
    ComandoToogleGeral = 'toogle',
}

--------------------------------------------------------------
----------------------- TOOGLE STAFF -------------------------
--------------------------------------------------------------
DougIds = { -- Configurar os ID's caso você deixe "UsarDoisPersonagens" em true
    [1] = { IdStaff = 1, IdPlayer = 101 },
    [2] = { IdStaff = 2, IdPlayer = 102 },
}

DougPermStaff = { -- Configurar as permissões caso você deixe "UsarDoisPersonagens" em false
    [1] = { PermUm = 'manager', PermDois = 'off-manager' },
    [2] = { PermUm = 'Diretor', PermDois = 'DiretorOff' },
}

--------------------------------------------------------------
----------------------- TOOGLE GERAL -------------------------
--------------------------------------------------------------
DougPermServ = {
    [1] = { PermUm = 'policia', PermDois = 'paisana-policia' },
    [2] = { PermUm = 'Cabo', PermDois = 'CaboPaisana' },
}