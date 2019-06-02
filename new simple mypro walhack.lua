HOME=1
function HOME()
menu = gg.choice({
	"1. WALLHACK ON",
	"2. WALLHACK OFF",
	"EXIT"},
	Last, "MYPRO 100.0")

if menu == 1 then ONWH()
end
if menu == 2 then OFFWH()
end
if menu == 3 then EX()
end
HOMEDM=-1
end

function ONWH()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("9.9999997e-10", gg.TYPE_FLOAT)
gg.getResults(5)
gg.editAll("3.4e38", gg.TYPE_FLOAT)
gg.toast("WALLHACK MODE ON")
end

function OFFWH()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("3.4e38", gg.TYPE_FLOAT)
gg.getResults(5)
gg.editAll("9.9999997e-10", gg.TYPE_FLOAT)
gg.toast("WALLHACK MODE ON")
end

function EX()
print("ENJOY CHEATING EDITED By TnA")
os.exit()
end
while(true)
do
if gg.isVisible(true) then
HOMEDM=1
gg.setVisible(false)
end
if HOMEDM==1 then HOME()
end
end