---@meta

---Module for displaying text and images of various sizes
local bigfont = {}

---Table which contains documentation for all methods.
bigfont.doc = {}

---Version name
bigfont.versionName = "Bigfont By Wojbie"

---Version number
bigfont.versionNum = 5.003

---Write text in big font using current terminal settings
---@param sString string "Text to write"
---@see bigfont.bigBlit
---@see bigfont.bigPrint
function bigfont.bigWrite(sString) end

---Write blit image largely using current terminal settings
---@param sString string The image, in blit format
---@param sFront "The foreground color"
---@param sBack "The background color"
---@see colors
---@see bigfont.bigWrite
---@see bigfont.bigPrint
function bigfont.bigBlit(sString, sFront, sBack) end

---Print in big font using the current terminal settings
---@param sString string "Text to write"
---@see bigfont.bigBlit
---@see bigfont.bigWrite
function bigfont.bigPrint(sString) end

---Write text in huge font using the current terminal settings
---@param sString string "Text to write"
---@see bigfont.hugeBlit
---@see bigfont.hugePrint
function bigfont.hugeWrite(sString) end

---Write blit image hugely using current terminal settings
---@param sString string "The image, in blit format"
---@param sFront "The foreground color"
---@param sBack "The background color"
---@see colors
---@see bigfont.hugeWrite
---@see bigfont.hugePrint
function bigfont.hugeBlit(sString, sFront, sBack) end

---Print text in huge font using the current terminal settings
---@param sString string "Text to write"
---@see bigfont.hugeWrite
---@see bigfont.hugeBlit
function hugePrint(sString) end

---Writes `sString` on `tTerminal` using current `tTerminal` colours.
---If any of the coordinates are `nil` then the text is centered in that axis using tTerminal size.
---@param sString string "Text to write"
---@param tTerminal term "Instance of the `term` module"
---@param nSize integer "Size of the text"
---@param nX integer "X coordinate to write to"
---@param nY integer "Y coordinate to write to"
---@see term
---@see bigfont.blitOn
function bigfont.writeOn(tTerminal, nSize, sString, nX, nY) end


---Blits `sString` on `tTerminal` with `sFront` and `sBack` colors.
---If any of the coordinates are `nil` then text is centered on that axis using `tTerminal` size.
---@param sString string "Text to write"
---@param tTerminal term "Instance of the `term` module"
---@param nSize integer "Size of the text"
---@param sFront string "Foreground color"
---@param sBack string "Background color"
---@param nX integer "X coordinate to write to"
---@param nY integer "Y coordinate to write to"
---@see term
---@see bigfont.writeOn
function bigfont.blitOn(tTerminal, nSize, sString, sFront, sBack, nX, nY) end

---Generate blittle object in size `nSize` with text `sString` in blittle format.
---@param nSize integer "Size of the text"
---@param sString string "Text to process"
---@param nFC integer "Foreground color"
---@param nBC integer "Background color"
---@see blittle
---@see color
function bigfont.makeBlittleText(nSize, sString, nFC, nBC) end

---Generates bigger font sizes and enables then on other functions that accept size argument. 
---By default, bigfont loads sizes 1-3 as those can be generated without yielding.
---Using this function, the user can generate sizes 4-6.
-------
---**Warning: This function will internally yield.**
function bigfont.generateFontSize(size) end

return bigfont
