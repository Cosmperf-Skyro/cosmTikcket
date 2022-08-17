hook.Add( "OnPlayerChat", "cosmTicket:Say", function( ply, strText, bTeam, bDead ) 
    if ( ply != LocalPlayer() ) then return end

	strText = string.lower( strText ) -- make the string lower case

	if ( strText == cosmTicket.Config.Command ) then -- if the player typed /hello then
		cosmTicket.Panel()
		return true -- this suppresses the message from being shown
	end
end )

