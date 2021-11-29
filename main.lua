---Ein kleiner Bot ---

local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == 'moin' then
		message.channel:send('Moin!')
	end
end)

client:run('Bot INSERT_TOKEN_HERE')
