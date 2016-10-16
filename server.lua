srv=net.createServer(net.TCP)
srv:listen(80,function(conn)
  conn:on("receive",function(conn,payload)
    print("------------------------------------------------------")
    print(payload)
    conn:send('HTTP/1.1 200 OK\r\nConnection: keep-alive\r\nCache-Control: private, no-store\r\n\r\n\
    <!DOCTYPE HTML>\
    <html><head><meta content="text/html;charset=utf-8"><title>ESP8266</title></head>\
    <body bgcolor="#ffffff"><div align = center><h2>Метеостанция<br>датчики DHT22 и BMP085</h2>\
    <h3><font color="gray"><table border = "1">\
    <tr><td>Температура</td>\
    <td><input style="text-align: center"type="text"size=10 name="p"value="'..t..'"> &deg;C</td>\
    <tr><td>Відносна вологість</td>\
    <td><input style="text-align: center"type="text"size=10 name="j"value="'..h..'"> %</td></tr>\
    <tr><td>Тиск</td>\
    <td><input style="text-align: center"type="text"size=10 name="p"value="'..p..'"> Па</td>\
    </tr></table></div></body></html>')
  end)
  conn:on("sent",function(conn) conn:close() end)
end)
