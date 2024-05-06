fx_version "adamant"
game "gta5"

name "Progress Bar"
description "A simple yet powerful and beautiful progress bar"
author "santosrb discord.gg/gJPwJxC2K5"
version "1.0"

client_scripts {
  'config.lua',
  'client/*.lua',
}

escrow_ignore {
	'*.lua',
	'**/**.lua',
}

ui_page 'html/index.html'

files {
  'html/**.**',
  'html/**/**.**',
  'html/**/**/**.**',
}

provide 'progressBar'
provide 'mythic-progressbar'

lua54 'yes'
