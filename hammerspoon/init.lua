local hyper = {"cmd", "alt", "ctrl"}

hs.hotkey.bind(hyper, "Left", function()--{{{
	local win = hs.window.focusedWindow()
	local currentFrame = win:frame()
	local newFrame = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	newFrame.x = max.x + (max.w / 2)
	newFrame.y = max.y
	newFrame.w = max.w / 2
	newFrame.h = max.h

	if newFrame.x == currentFrame.x and newFrame.y == currentFrame.y then
		win:moveOneScreenWest()
		local newScreen = win:screen()
		local newMax = newScreen:frame()
		newFrame.x = newMax.x + newMax.x / 2
		newFrame.y = newMax.y
		win:setFrame(newFrame, 0)
	else
		win:setFrame(newFrame, 0)
	end
end)--}}}
hs.hotkey.bind(hyper, "Right", function()--{{{
	local win = hs.window.focusedWindow()
	local currentFrame = win:frame()
	local newFrame = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	newFrame.x = max.x + (max.w / 2)
	newFrame.y = max.y
	newFrame.w = max.w / 2
	newFrame.h = max.h

	if newFrame.x == currentFrame.x and newFrame.y == currentFrame.y then
		win:moveOneScreenEast()
		local newScreen = win:screen()
		local newMax = newScreen:frame()
		newFrame.x = newMax.x
		newFrame.y = newMax.y
		win:setFrame(newFrame, 0)
	else
		win:setFrame(newFrame, 0)
	end
end)--}}}
hs.hotkey.bind(hyper, "Up", function()--{{{
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  
  if f.x == max.x or f.x == max.x + max.w / 2 then
	  f.x = f.x
	  f.y = max.y
	  f.w = f.w
	  f.h = max.h / 2
  else
	  f.x = max.x
	  f.y = max.y
	  f.w = max.w
	  f.h = max.h
  end

  win:setFrame(f, 0)
end)--}}}
hs.hotkey.bind(hyper, "Down", function()--{{{
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  
  
  if f.h == max.h and (f.x == max.x or f.x == max.x + max.w / 2) then
	  f.x = f.x
	  f.y = f.y + max.h / 2
	  f.w = f.w
	  f.h = max.h / 2
  else
	  f.x = max.x + max.w * 0.2
	  f.y = max.y + max.h * 0.1
	  f.w = max.w * 0.6
	  f.h = max.h * 0.8
  end
  win:setFrame(f, 0)
end)--}}}
function reload_config(files)--{{{
	    hs.reload()
	end
	hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
	hs.alert.show("Config loaded")--}}}
