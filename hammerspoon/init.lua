local hyper = {"cmd", "alt", "ctrl"}

hs.hotkey.bind(hyper, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "Up", function()
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

  win:setFrame(f)
end)


hs.hotkey.bind(hyper, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  
  
  if f.x == max.x or f.x == max.x + max.w / 2 then
	  f.x = f.x
	  f.y = f.y + max.h / 2
	  f.w = f.w
	  f.h = max.h / 2
  else
	  f.x = max.x
	  f.y = max.y
	  f.w = max.w
	  f.h = max.h
  end
  win:setFrame(f)
end)

function reload_config(files)
	    hs.reload()
	end
	hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
	hs.alert.show("Config loaded")

-----------------------------------------------
-- Hyper i to show window hints
-----------------------------------------------

hs.hotkey.bind(hyper, "i", function()
    hs.hints.windowHints()
end)

-----------------------------------------------
-- Hyper hjkl to switch window focus
-----------------------------------------------

hs.hotkey.bind(hyper, 'k', function()
    hs.window.focusedWindow():focusWindowNorth()
end)

hs.hotkey.bind(hyper, 'j', function()
    hs.window.focusedWindow():focusWindowSouth()
end)

hs.hotkey.bind(hyper, 'l', function()
    hs.window.focusedWindow():focusWindowEast()
end)

hs.hotkey.bind(hyper, 'h', function()
    hs.window.focusedWindow():focusWindowWest()
end)
