local function getFile(name, lname)
    local r = http.get("https://raw.githubusercontent.com/Abounini/wave/master/" .. name, nil, true)
    local f = fs.open(lname, "wb")
    f.write(r.readAll())
    f.close()
 
end
 
if (not fs.exists("Guren No Yumiya.nbs")) then
    getFile("decode/apis/wave.lua", "apis/wave.lua")
    getFile("sample/Guren No Yumiya.nbs", "Guren No Yumiya.nbs")
    
 
end
 

