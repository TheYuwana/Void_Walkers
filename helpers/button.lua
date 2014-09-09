----------------------------
-- Variables
----------------------------
Button = {}
Button.__index = Button

----------------------------
-- Constructor
----------------------------
function Button.create(x, y, w, h, imgSource, index)

  local btn = {}
  setmetatable(btn, Button)
  
  btn._x = x
  btn._y = y
  btn._width = w
  btn._height = h
  btn._imgSource = imgSource
  btn._index = index
  
  btn._sprite = MOAIGfxQuad2D.new()
  btn._prop =  MOAIProp2D.new()
  
  btn:make()
  
  --Return object
  return btn

end

----------------------------
-- Functions
----------------------------
--Create button (Internal function)
function Button:make()
  
  --Sprite
  self._sprite:setTexture(self._imgSource)
  self._sprite:setRect(self._x, self._y, self._x + self._width, self._y + self._height)
  
  --Prop
  self._prop:setDeck(self._sprite)
  self._prop:setPriority(1)
  self._prop:setIndex(self._index)

  --Insert prop
  layer:insertProp(self._prop)
  partition:insertProp(self._prop)

end

-- Set Texture
function Button:changeTexture(newImg)
  
  self._imgSource = newImg
  layer:removeProp(self._prop)
  self:make()
  
end

-- Get prop
function Button:getProp()

  return self._prop

end