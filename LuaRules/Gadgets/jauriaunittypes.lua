----------------------------------------
-- Define individual unit types

-- Homebases
fabricacaos = UnitDefNames.fabricacaos.id
fabricaeurope = UnitDefNames.fabricaeurope.id
fabricaporreton = UnitDefNames.fabricaporreton.id
fabricaheks = UnitDefNames.fabricaheks.id

-- Towers
torrun = UnitDefNames.torrun.id

-- Constructors
rc = UnitDefNames.arc.id
adept = UnitDefNames.aadept.id
prospector = UnitDefNames.aprospector.id

-- Spam
nm1 = UnitDefNames.cnm1.id
rk2 = UnitDefNames.drk2.id

-- Heavy
nk3 = UnitDefNames.enk3.id
tkt4 = UnitDefNames.ftkt4.id

-- Arty
lz5 = UnitDefNames.glz5.id

-- Other
it0 = UnitDefNames.bit0.id

----------------------------------------
-- Define unit type groups

HomeBase = {
	fabricaporreton,fabricaheks,fabricacaos,fabricaeurope,
}


towers = {
	torrun,
}


cons = {
	arc,aadepts,aprospector,
}

spam = {
	nm1,rk2,
}

heavy = {
	nk3,tkt4,
}

arty = {
	lz5,
}

----------------------------------------
-- Define isX unit type group tests

isHomeBase = {
	[fabricaporreton]=true,
	[fabricaheks]=true,
	[fabricacaos]=true,
	[fabricaeurope]=true,
}

isTower = {
	[torrun]=true,
}

isCons = {
	[rc]=true,
	[adept]=true,
	[prospector]=true,
}

isSpam = {
	[nm1]=true,
	[rk2]=true,
}

isHeavy = {
	[nk3]=true,
	[tkt4]=true,
}

isArty = {
	[lz5]=true,
}

----------------------------------------
