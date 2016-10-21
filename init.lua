wifi.setmode(wifi.STATION)
print("Connecting to the SSID")
wifi.sta.config("SSID","password")
wifi.sta.connect()
wifi.sta.setip({ip="192.168.0.100",netmask="255.255.255.0",gateway="192.168.0.1"})

print("ESP8266 mode: " ..wifi.getmode())
print("ESP8266 MAC: " ..wifi.ap.getmac())
print("ESP8266 IP :"..wifi.sta.getip())

dofile("server.lua")
collectgarbage()
dofile("do.lua")
