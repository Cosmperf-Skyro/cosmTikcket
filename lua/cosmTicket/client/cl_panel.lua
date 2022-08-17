function respW(pixels, base)
    base = base or 1920
    return ScrW()/(base/pixels)
end
 
function respH(pixels, base)
    base = base or 1080
    return ScrH()/(base/pixels)
end

sSubtitleFont = ( sSubtitleFont or "TLib.Standard" )


function cosmTicket.Panel()
    cosmTicket.frame = vgui.Create("TLFrame")
    cosmTicket.frame:SetSize(respW(900), respH(550))
    cosmTicket.frame:Center()
    cosmTicket.frame:MakePopup()
    cosmTicket.frame:ShowCloseButton(true)
    cosmTicket.frame:SetHeader(cosmTicket.lang.Title)
    function cosmTicket.frame:Paint(w, h)
        surface.SetDrawColor( TLib:C( 0 ) )
        surface.DrawRect( 0, 0, w, h )
        draw.SimpleText(cosmTicket.lang.player, sSubtitleFont, respW(cosmTicket.lang.x), respH(cosmTicket.lang.y), color_white, TEXT_ALIGN_LEFT)
    end


    cosmTicket.listplayer = vgui.Create("TLScroll", cosmTicket.frame)
    cosmTicket.listplayer:SetSize(respW(300), respH(400))
    cosmTicket.listplayer:SetPos(respW(10), respH(125))
    cosmTicket.player()
end

function cosmTicket.player()
    for k, v in ipairs(player.GetAll()) do
        cosmTicket.ButtonPlayer = vgui.Create("TLButton", cosmTicket.listplayer)
        cosmTicket.ButtonPlayer:SetSize(ScrW(), respH(50))
        cosmTicket.ButtonPlayer:Dock(TOP)
        cosmTicket.ButtonPlayer:DockMargin(0, 0, 0, respH(5))
        cosmTicket.ButtonPlayer:SetText(v:Name())
    end
end