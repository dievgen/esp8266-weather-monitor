-- подготовка строчной переменной для давления
local p_dec = (math.floor((press*75)/10000))
local p_adec = (((press*75)%10000)/1000)
p = p_dec.."."..p_adec