wifi.setmode(wifi.STATION)
print("Подключаемся к сети %название_сети%")
wifi.sta.config("%название_сети%","%пароль_сети%")
wifi.sta.connect()
wifi.sta.setip({ip="192.168.0.100",netmask="255.255.255.0",gateway="192.168.0.1"})

print("Настройка ESP8266: " ..wifi.getmode())
print("MAC адрес модуля: " ..wifi.ap.getmac())
print("IP модуля "..wifi.sta.getip())

dofile("server.lua")
collectgarbage()
dofile("do.lua")
