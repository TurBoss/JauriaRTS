----------------------------------------
-- Define individual unit types

-- Homebases
fabricacaos = UnitDefNames.fabricacaos.id
fabricaeurope = UnitDefNames.fabricaeurope.id
fabricaporreton = UnitDefNames.fabricaporreton.id
fabricaheks = UnitDefNames.fabricaheks.id

-- Towers
torrun = UnitDefNames.torrun.id
torreta = UnitDefNames.torreta.id
torretapro = UnitDefNames.torretapro.id
metralleta = UnitDefNames.metralleta.id
earthturret = UnitDefNames.earthturret.id

--mobs
cuellito = UnitDefNames.cuellito.id
gusano = UnitDefNames.gusano.id


-- Constructors
rc = UnitDefNames.arc.id
adept = UnitDefNames.aadept.id
prospector = UnitDefNames.aprospector.id

-- Spam
nm1 = UnitDefNames.cnm1.id
rk2 = UnitDefNames.drk2.id

raider = UnitDefNames.braider.id
marauder = UnitDefNames.cmarauder.id

militia = UnitDefNames.bmilitia.id
berserker = UnitDefNames.cberserker.id
overkraft = UnitDefNames.doverkraft.id


-- Heavy
nk3 = UnitDefNames.enk3.id
tkt4 = UnitDefNames.ftkt4.id
dt6 = UnitDefNames.hdt6.id

besieger = UnitDefNames.dbesieger.id
desolator = UnitDefNames.fdesolator.id
juggernaut = UnitDefNames.gjuggernaut.id
archaon = UnitDefNames.harchaon.id

scorpio = UnitDefNames.fscorpio.id
taurus = UnitDefNames.gtaurus.id
atlas = UnitDefNames.hatlas.id

-- Arty
lz5 = UnitDefNames.glz5.id

putris = UnitDefNames.eputris.id

-- Other
it0 = UnitDefNames.bit0.id
valkyria = UnitDefNames.evalkyria.id

----------------------------------------
-- Define unit type groups

HomeBase = {
	fabricaporreton,fabricaheks,fabricacaos,fabricaeurope,
}


towers = {
	torrun,torreta,torretapro,earthturret,metralleta,
}

mobs = {
	cuellito,gusano,
}

cons = {
	rc,adept,prospector,
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
	[torreta]=true,
	[torretapro]=true,
	[metralleta]=true,
	[earthturret]=true,
}

isMob = {
	[cuellito]=true,
	[gusano]=true,
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
