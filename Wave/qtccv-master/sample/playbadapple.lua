local function getFile(name, lname)
    local r = http.get("https://raw.githubusercontent.com/Abounini/wave/master/" .. name, nil, true)
    local f = fs.open(lname, "wb")
    f.write(r.readAll())
    f.close()
 
end
 
if (not fs.exists("badapple.qtv")) then
    getFile("decode/apis/bitreader.lua", "apis/bitreader.lua")
    getFile("decode/apis/hexscreen.lua", "apis/hexscreen.lua")
    getFile("decode/apis/wave.lua", "apis/wave.lua")
    getFile("decode/videoplayer.lua", "videoplayer.lua")
    getFile("sample/badapple.nbs", "Guren No Yumiya.nbs")
    getFile("sample/badapple.qtv", "badapple.qtv")
 
end
 
shell.run("videoplayer", "badapple")
