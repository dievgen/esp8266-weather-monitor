bmp085 = require("BMP")
sda_pin = 1
scl_pin = 2

bmp085.init(sda_pin, scl_pin)
press = bmp085.getUP(oss)
print(string.format("p = %d",press))

-- Убираем мусор
bmp085 = nil
package.loaded["BMP"]=nil
collectgarbage()