local hyper = {"cmd", "alt", "ctrl"}

hs.hotkey.bind(hyper, "Left", function()
	local win = hs.window.focusedWindow()
	local screen = win:screen():frame()

	local frame = win:frame()
	frame.x = 0
	frame.y = screen.y
	frame.w = screen.w / 2
	frame.h = screen.h
        win:setFrame(frame, 0)
end)

hs.hotkey.bind(hyper, "Right", function()
	local win = hs.window.focusedWindow()
	local screen = win:screen():frame()

	local frame = win:frame()
	frame.x = screen.x + (screen.w / 2)
	frame.y = screen.y
	frame.w = screen.w / 2
	frame.h = screen.h
        win:setFrame(frame, 0)
end)

hs.hotkey.bind(hyper, "Up", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen():frame()
  win:setFrame(screen, 0)
end)

hs.hotkey.bind(hyper, "Down", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen():frame()

  local f = win:frame()
  f.x = screen.x + screen.w * 0.2
  f.y = screen.y + screen.h * 0.1
  f.w = screen.w * 0.6
  f.h = screen.h * 0.8
  win:setFrame(f, 0)
end)

function reload_config(files)
    hs.reload()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")
