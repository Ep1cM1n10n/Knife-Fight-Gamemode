GM.Name = "Knife Fight"
GM.Author = "Ep1c_M1n10n"
GM.Email = "ep1cm1n10n123@gmail.com"
GM.Website = "ep1cm1n10n.ddns.net"
models = {"models/player/kleiner.mdl", "models/player/police.mdl", "models/player/police_fem.mdl", "models/player/combine_soldier.mdl", "models/player/combine_super_soldier.mdl", "models/player/combine_soldier_prisonguard.mdl", "models/player/Group01/male_07.mdl"}
maps = {"gm_construct", "gm_flatgrass", "kf_spheres", "kf_quakena", "kf_arena"}
knifes = {"csgo_flip", "csgo_default_knife", "csgo_bayonet", "csgo_default_t", "csgo_bowie"}
startTime = os.time()
currentMap = game.GetMap()
function GM:Initialize()
end
function GM:Tick()
timelimit = GetConVar("kf_timelimit"):GetInt()*60
endTime = startTime+timelimit
timeleft = os.time()-endTime
if os.time() >= endTime then
	game.ConsoleCommand("changelevel " ..table.Random(maps).. "\n")
end
end
function PlayerInitialSpawn( ply )
ply:SetModel( table.Random(models) ) 
end
hook.Add( "PlayerInitialSpawn", "PlayerInitialSpawn", PlayerInitialSpawn )
hook.Add( "Initialize", "Initialize", Initialize )

function GM:PlayerSwitchFlashlight(ply, SwitchOn)
	return true
end