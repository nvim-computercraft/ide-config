name = "CC:Tweaked"

words = { "bigfont%.%w+", "switchcraft" }

configs = {
	{
		key = "Lua.runtime.version",
		action = "set",
		value = "Lua 5.3",
	},
}

-- add globals to config

local GLOBALS = {
	"switchcraft",
	"chatbox"
}

for _, g in ipairs(GLOBALS) do
	table.insert(configs, {
		key = "Lua.diagnostics.globals",
		action = "add",
		value = g,
	})
end
