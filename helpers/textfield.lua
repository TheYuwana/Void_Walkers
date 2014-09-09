----------------------------
-- Fonts
----------------------------
charcodes = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 .,:;!?()&/-'
font = MOAIFont.new ()
font:loadFromTTF ( 'AdobeArabic-Regular.otf', charcodes, 16, 163 )

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