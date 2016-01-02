
function CommandR:new(func, args)
	local commandR = {}
	commandR.func = func
	commandR.args = args
	function commandR:run()
		commandR.func(args)
	end
	return commandR
end
