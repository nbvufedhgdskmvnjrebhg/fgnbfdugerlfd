--anti load--
function anti_load()
    HE = math.random(500, 999)
    for _FORV_3_ = 1, HE do
        x = math.random(Infinity, Infinity)
        for _FORV_7_ = 1, 899 do
            y = math.random(Infinity, 0)
            x = x .. y
        end
        z = '"' .. x .. '"'
        anti = z .. uselescode .. z
        funnum = math.random(10000, 100000)
        fundump = "function " .. fundnum .. "()" .. "\n" .. anti .. "\n" .. "end"
        loadme = string.dump(fundump)
        load(loadme)
    end
end

--Ckcracker check--
check = gg.isPackageInstalled("sstool.com.only.sstool")
check = gg.isPackageInstalled("io.neoterm")
check = gg.isPackageInstalled("gg.wtcs.log")
if check == true then
    gg.alert("🔴 A Script Cracker Has Been Found On Your Device! Delete To Use Script")

    print("Bye bye")
    os.exit()
end

--℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅-- 


--pid check--
TH1 = gg
TH1 = TH1.required
TH2 = "Troll"
TH1 = "TEST"
TH3 = "Pixel Gun 3D"
TH4 = "com.pixel.gun3d"
if 1 <= 1 then
end
if 1 ~= 8 and TH4 ~= gg.getTargetInfo().packageName then
    gg.alert(
        "Script Created for: " ..
            TH3 .. [[

   Don't use: ]] .. gg.getTargetInfo().label .. " Go into the game and try it\n"
    )
    print("Script exit " .. TH2 .. " Bye bye")
    -- os.exit()
end
--℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅--



--warning for dumb people--
L = {"◼", "◻", "◻", "◻", "◻", "◻"}
LD = 0
for i = 0, 6, 1 do
    if gg.isVisible(true) and i ~= 6 then
        gg.setVisible(false)
    end
    gg.sleep(300)
    gg.toast("Loading: " .. L[1] .. L[2] .. L[3] .. L[4] .. L[5] .. L[6] .. " " .. LD .. "/100%")
    -- if LD is less than 100 then add 20 to LD
    if LD < 100 then
        LD = LD + 20
    end
    table.remove(L)
    table.insert(L, 2, "◼")
    if i == 6 then
        gg.alert("Enjoy the cars lol.")
        gg.toast("By BoredKarma")
    end
end
--℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅℅--


local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
    if n == lib then
        return startAddress, endAddress
    end
    local ranges = gg.getRangesList(lib or "libil2cpp.so")
    for i, v in ipairs(ranges) do
        if v.state == "Xa" then
            startAddress = v.start
            endAddress = ranges[#ranges]["end"]
            break
        end
    end
    return startAddress, endAddress
end

local function getArch()
    local arch = gg.getTargetInfo().x64
    if arch then
        return "x64"
    else
        return "x86"
    end
end

local function PATCH(libname, offset, hex)
    name(libname)
    local t, total = {}, 0
    for h in string.gmatch(hex, "%S%S") do
        table.insert(
            t,
            {
                address = startAddress + offset + total,
                flags = gg.TYPE_BYTE,
                value = h .. "r"
            }
        )
        total = total + 1
    end
    local res = gg.setValues(t)
    if type(res) ~= "string" then
        return true
    else
        gg.alert(res)
        return false
    end
end


function On()
    local Ton
    Ton = gg
    Ton = Ton.toast
    Ton("✔️ Oɴ ✔️")
end

function Off()
    local Toff
    Toff = gg
    Toff = Toff.toast
    Toff("❌ Oғғ ❌")
end

A1 = "〘⭕〙"
A2 = "〘⭕〙"
A3 = "〘⭕〙"
A4 = "〘⭕〙"
A5 = "〘⭕〙"
A6 = "〘⭕〙"
A7 = "〘⭕〙"
A8 = "〘⭕〙"
A9 = "〘⭕〙"
A10 = "〘⭕〙"
A11 = "〘⭕〙"
A12 = "〘⭕〙"
A13 = "〘⭕〙"
A14 = "〘⭕〙"
A15 = "〘⭕〙"
A16 = "〘⭕〙"
A17 = "〘⭕〙"
A18 = "〘⭕〙"

Main = 1

function Main()
    menu =
        gg.multiChoice(
        {
            A1 .. "Spawn Car Normal ",
            A2 .. "Spawn Car w/Player GodMode ",
            -- A3 .. "Car GodMode ",
            "⚙️ Exɪᴛ Sᴄʀɪᴘᴛ ⚙️"
        },
        nil,
        (os.date("Script By BoredKarma\n⏳Time: %Y/%m/%d  : %H:%M:%S⏳ "))
    )

    if menu == nil then
    else
        if menu[1] == true then
            SpawnCar()
        end
        if menu[2] == true then
            God()
        end
        if menu[3] == true then
            ExitMN()
        end
        if menu[4] == true then
            ExitMN()
        end
    end
    lua = -1
end

function SpawnCar()-- update function name: 丏丞丁下专丏业三丕 function name: 丕东不一业丗三丗丗
    if A1 == "〘⭕〙" then
        if getArch() == "x64" then
            PATCH("libil2cpp.so", 0x1AEDAFC, "FD 7B BF A9 FD 03 00 91 9B 09 00 94 00 00 80 52 FD 7B C1 A8 C0 03 5F D6") -- 64 bit car spawn 
        else -- if getArch() == "x86" then
            PATCH("libil2cpp.so", 0x1312AA4, "80 40 2D E9 00 70 8D E2 D8 0C 00 EB 00 30 B0 E3 03 00 A0 E1 80 80 BD E8") -- 32 bit car spawn
        end
        On()
        A1 = "〘🔘〙"
    elseif A1 == "〘🔘〙" then -- if it's on, turn it off
        if getArch() == "x64" then
            PATCH("libil2cpp.so", 0x1AEDAFC, "E8 0F 1C FC F7 5B 01 A9 F5 53 02 A9 F3 7B 03 A9 74 83 02 90 55 5E 02 F0") -- default 64 bit
        else -- if getArch() == "x86" then
            PATCH("libil2cpp.so", 0x1312AA4, "F0 4B 2D E9 02 8B 2D ED 08 D0 4D E2 B0 56 9F E5 00 40 A0 E1 05 50 8F E0") -- default 32 bit
        end
        Off()
        A1 = "〘⭕〙"
    end
end

function God() -- god function name: 丐丌丕一丛一丐丛下
    if A2 == "〘⭕〙" then
        if getArch() == "x64" then
            PATCH("libil2cpp.so", 0x1AEDAFC, "FD 7B BF A9 FD 03 00 91 9B 09 00 94 00 00 80 52 FD 7B C1 A8 C0 03 5F D6") -- 64 bit car spawn 
            PATCH("libil2cpp.so", 0x476323C, "1F 20 03 D5 C0 03 5F D6") -- player god 64 bit
        else -- if getArch() == "x86" then
            PATCH("libil2cpp.so", 0x1312AA4, "80 40 2D E9 00 70 8D E2 D8 0C 00 EB 00 30 B0 E3 03 00 A0 E1 80 80 BD E8") -- 32 bit car spawn
            PATCH("libil2cpp.so", 0x4C11164, "00 F0 20 E3 1E FF 2F E1") -- player god 32 bit
        end
        On()
        A2 = "〘🔘〙"
    elseif A2 == "〘🔘〙" then -- if it's on, turn it off
        if getArch() == "x64" then
            PATCH("libil2cpp.so", 0x1AEDAFC, "E8 0F 1C FC F7 5B 01 A9 F5 53 02 A9 F3 7B 03 A9 74 83 02 90 55 5E 02 F0") -- car default 64 bit
            PATCH("libil2cpp.so", 0x4C09CE0, "E2 03 1F 2A E0 03 13 AA") -- player god default 64 bit
        else -- if getArch() == "x86" then
            PATCH("libil2cpp.so", 0x1312AA4, "F0 4B 2D E9 02 8B 2D ED 08 D0 4D E2 B0 56 9F E5 00 40 A0 E1 05 50 8F E0") -- car default 32 bit
            PATCH("libil2cpp.so", 0x4C11164, "F0 4F 2D E9 04 D0 4D E2") -- player god default 32 bit
        end
        Off()
        A2 = "〘⭕〙"
    end
end

function CarGod()
    if A3 == "〘⭕〙" then
        PATCH("libil2cpp.so", 0x4C09CE0, "00 00 A0 E3 1E FF 2F E1")
        On()
        A3 = "〘🔘〙"
    elseif A3 == "〘🔘〙" then
        PATCH("libil2cpp.so", 0x4C09CE0, "F0 4F 2D E9 04 D0 4D E2")
        Off()
        A3 = "〘⭕〙"
    end
end

function ExitMN()
    gg.alert("Thanks for using this Script! ~ BoredKarma")
    print("Script Created By Chewy, Mod By BoredKarma")
    gg.skipRestoreState()
    gg.setVisible(true)
    os.exit()
end

while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        lua = 1
    end
    gg.clearResults()
    if lua == 1 then
        Main()
    end
end