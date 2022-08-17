
hook.Add("PlayerSay", "cosmTicket:AdminON", function(ply, text)
    if ( string.lower( text ) == cosmTicket.Config.AdminMode) then
        if cosmTicket.Config.UserGroup[ply:GetUserGroup()] then
            ply:GodEnable()
            ply:SetMoveType(MOVETYPE_NOCLIP)
            ply:ChatPrint("[CosmTicket] Vous venez de passer en admin")
        end
    end

end)

hook.Add("PlayerSay", "cosmTicket:AdminOff", function(ply, text)
    if ( string.lower( text ) == cosmTicket.Config.RemoveAdminMode) then
        if cosmTicket.Config.UserGroup[ply:GetUserGroup()] then
            ply:GodDisable()  
            ply:SetMoveType(MOVETYPE_WALK) 
            ply:ChatPrint("[CosmTicket] Vous venez de quitter le mode admin")
        end
    end

end)