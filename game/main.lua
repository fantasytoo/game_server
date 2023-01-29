local skynet = require "skynet"
require "skynet.manager"
local cluster = require "skynet.cluster"
local gameconfig = require "gameconfig"
local datareader = require "datareader"
local snlog = require "snlog"

local function __ERROR_TRACE_FUNC__(msg)
	snlog.info(msg)
	snlog.info(debug.traceback(1))
end

skynet.start(function()
	skynet.uniqueservice("debug_console",80001)
	skynet.dispatch("lua",function(session,source,...)
		local response = skynet.response(skynet.pack)
		skynet.fork()
	end)
end)

