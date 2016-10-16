pin = 7

local status, temp, humi, temp_dec, humi_dec = dht.read(pin)
if status == dht.OK then
    -- подготовка строчных переменных для модулей server и thingspeak
    h = (math.floor(humi)).."."..(humi_dec/100)
    t = (math.floor(temp)).."."..(temp_dec/100)
    print(string.format("t = %s;h = %s",t,h))

elseif status == dht.ERROR_CHECKSUM then
    print( "DHT Checksum error." )
elseif status == dht.ERROR_TIMEOUT then
    print( "DHT timed out." )
end