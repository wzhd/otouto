 -- Actually the simplest plugin ever!

local command = 'ping'

local triggers = {
	'^/ping[@'..bot.username..']*'
}

local action = function(msg)
        sendMessage(msg.chat.id, 'Pong!', true, msg.message_id, true)
end

return {
	action = action,
        command = command,
        triggers = triggers
}
