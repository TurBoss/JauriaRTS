local root = piece("root");
local chasis = piece("chasis");
local cabina = piece("cabina");
local cubeta = piece("cubeta");
local autogiro = piece("autogiro");
local material = piece("material");
local faros = piece("faros");
local ruedasdel = piece("ruedasdel");
local ruedastras = piece("ruedastras");
local taladro = piece("taladro");

local flare = piece('flare');

local SIG_RC = 1;

local wheel_speed = math.rad(300)


function script.Create()
	Spin(autogiro, z_axis, math.rad(200))
end

function script.StartMoving()
    Spin(ruedasdel, x_axis, wheel_speed)
    Spin(ruedastras, x_axis, wheel_speed)
end

function script.StopMoving()
    StopSpin (ruedasdel,x_axis)
    StopSpin (ruedastras,x_axis)
end


function script.StartBuilding(heading, pitch)
	Signal(SIG_RC)
	SetSignalMask(SIG_RC)
    Spin(taladro, y_axis, math.rad(200))
	SetUnitValue(COB.INBUILDSTANCE, 1)
end

function script.StopBuilding()
    StopSpin (taladro,y_axis)
end

function script.QueryNanoPiece()
	return flare
end
