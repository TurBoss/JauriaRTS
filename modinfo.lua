--http://springrts.com/wiki/Modinfo.lua
local modinfo = {
	name = "Jauria RTS",
	shortname = "jauria",
	game = "jauria",
	shortgame = "jauria",
	description = "Jauria RTS Game",
	url = "http://jauria.mooo.com",
	version = "$VERSION", --when zipping .sdz for releasing make this a full integer like 1,2,3
	modtype = 1,
	depend = {
		"cursors.sdz",
	}
}
return modinfo
