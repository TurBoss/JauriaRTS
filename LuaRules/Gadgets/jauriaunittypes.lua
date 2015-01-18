

----------------------------------------
-- Define individual unit types

-- Homebases
fabricacaos = UnitDefNames.fabricacaos.id
fabricaeurope = UnitDefNames.fabricaeurope.id
fabricaporreton = UnitDefNames.fabricaporreton.id
fabricaheks = UnitDefNames.fabricaheks.id

-- Special Buildings
torrun = UnitDefNames.torrun.id

-- Constructors
rc = UnitDefNames.arc.id
adept = UnitDefNames.aadept.id
prospector = UnitDefNames.aprospector.id

-- Spam
--bit = UnitDefNames.bit.id
--bug = UnitDefNames.bug.id
--bugold = UnitDefNames.bugold.id
--packet = UnitDefNames.packet.id
--virus = UnitDefNames.virus.id
--exploit = UnitDefNames.exploit.id
--fairy = UnitDefNames.fairy.id

-- Heavy
--byte = UnitDefNames.byte.id
--worm = UnitDefNames.worm.id
--wormold = UnitDefNames.wormold.id
--connection = UnitDefNames.connection.id
--reimu = UnitDefNames.reimu.id

-- Arty
--pointer = UnitDefNames.pointer.id
--dos = UnitDefNames.dos.id
--flow = UnitDefNames.flow.id
--marisa = UnitDefNames.marisa.id

-- Other
--exploit= UnitDefNames.exploit.id
--logic_bomb = UnitDefNames.logic_bomb.id
--mineblaster = UnitDefNames.mineblaster.id
--badblock = UnitDefNames.badblock.id
--signal = UnitDefNames.signal.id

--hand = UnitDefNames.hand.id
--rock = UnitDefNames.rock.id
--paper = UnitDefNames.paper.id
--scissors = UnitDefNames.scissors.id

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

--spam = {
--	bit,bug,bugold,packet,fairy,
--	virus,exploit,rock,paper,scissors,
--}

--heavy = {
--	byte,worm,wormold,connection,reimu,
--}

--arty = {
--	pointer,dos,flow,marisa,
--}

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
--[[
isSpam = {
	[bit]=true,
	[bug]=true,
	[bugold]=true,
	[packet]=true,
	[virus]=true,
	[exploit]=true,
	[fairy]=true,
	[rock]=true,
	[paper]=true,
	[scissors]=true,
}

isHeavy = {
	[byte]=true,
	[worm]=true,
	[wormold]=true,
	[connection]=true,
	[reimu]=true,
}

isArty = {
	[pointer]=true,
	[dos]=true,
	[flow]=true,
	[marisa]=true,
}]]--

----------------------------------------

