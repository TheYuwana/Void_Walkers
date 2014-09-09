----------------------------
-- Variables
----------------------------
TextField = {}
TextField.__index = TextField

----------------------------
-- Constructor
----------------------------
function TextField.create(x, y, w, h, value)
  
  local txt = {}
  setmetatable(txt, TextField)
  
  txt._x = x
  txt._y = y
  txt._width = w
  txt._height = h
  txt._value = value
  
  txt._obj = MOAITextBox.new()
  txt._style = MOAITextStyle.new()
  
  txt:make()
  
  return txt
  
end

----------------------------
-- Functions
----------------------------
--Create button (Internal function)
function TextField:make()
  
  self._obj:setStyle(newStyle(font, 15))
  self._obj:setString(self._value)
  self._obj:setRect(self._x, self._y, self._x + self._width, self._y + self._height)
  self._obj:setYFlip(true)
  
  layer:insertProp(self._obj)
  
end

function newStyle(font, size)
 
 local charcodes = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 .,:;!?()&/-'
 font = MOAIFont.new ()
 font:loadFromTTF ( 'Assets/fonts/AdobeArabic-Regular.otf', charcodes, 16, 163 )
 
 local style = MOAITextStyle.new()
 style:setFont(font)
 style:setSize(size) 
 style:setColor(1, 1, 1, 1) 
 
 return style
  
end





--[[
----------------------------
-- Fonts
----------------------------
charcodes = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 .,:;!?()&/-'
font = MOAIFont.new ()
font:loadFromTTF ( 'Assets/fonts/AdobeArabic-Regular.otf', charcodes, 16, 163 )

----------------------
-- Style
----------------------
function newStyle(font, size)
 
 local style = MOAITextStyle.new()
 style:setFont(font)
 style:setSize(size) 
 style:setColor(1, 1, 1, 1) 
 
 return style
  
end

----------------------------
-- Global textfield array
----------------------------
textBox = {}

----------------------------
-- Function for textbox creation
----------------------------
function createTextBox(x, y, w, h, value)
  
  local textbox = MOAITextBox.new()
  textbox:setStyle(newStyle(font, 15))
  textbox:setString(value)
  textbox:setRect(x, y, x+w, y+h)
  textbox:setYFlip(true)
  layer:insertProp(textbox)
  
  return textbox;
  
end

--]]