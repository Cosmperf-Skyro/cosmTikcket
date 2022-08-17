cosmTicket = cosmTicket or {}
cosmTicket.Config = cosmTicket.Config or {}

cosmTicket.Config.Command = "!reports" -- Command used to open the user panel / Commande utilisé pour ouvrir le panel utilisateur
cosmTicket.Config.Language = "fr" -- fr or en
cosmTicket.Config.UserGroup = {
    ["superadmin"] = true,
    ["admin"] = true, 
}

cosmTicket.Config.AdminMode = "!staff"
cosmTicket.Config.RemoveAdminMode = "!unstaff"