local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local antena = piece('antena');
local arracada = piece('arracada');
local asientod = piece('asientod');
local asientoi = piece('asientoi');
local barras = piece('barras');
local batidora = piece('batidora');
local brazod = piece('brazod');
local brazoi = piece('brazoi');
local Cabeza = piece('Cabeza');
local cabina = piece('cabina');
local cadera = piece('cadera');
local cambio = piece('cambio');
local chasis = piece('chasis');
local cintura = piece('cintura');
local codera = piece('codera');
local craneo = piece('craneo');
local cubeta = piece('cubeta');
local cuello = piece('cuello');
local dientes = piece('dientes');
local ejea = piece('ejea');
local ejeb = piece('ejeb');
local entrepiernad = piece('entrepiernad');
local entrepiernai = piece('entrepiernai');
local farod = piece('farod');
local faroi = piece('faroi');
local maqinaria2 = piece('maqinaria2');
local maquinaria = piece('maquinaria');
local ojod = piece('ojod');
local ojoi = piece('ojoi');
local panel = piece('panel');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local rueda4i = piece('rueda4i');
local ruedasdel = piece('ruedasdel');
local ruedatras = piece('ruedatras');
local taladro = piece('taladro');
local tapa = piece('tapa');
local tataladroa = piece('tataladroa');
local torso = piece('torso');
local volante = piece('volante');
local flare = piece('flare');

local SIG_RC = 1;

local wheel_speed = math.rad(300)

function script.StartMoving()
    Spin(ruedasdel, x_axis, wheel_speed)
    Spin(ruedatras, x_axis, wheel_speed)
    Spin(rueda4i, x_axis, wheel_speed)
end

function script.StopMoving()
    StopSpin (ruedasdel,x_axis)
    StopSpin (ruedatras,x_axis)
    StopSpin (rueda4i,x_axis)
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
