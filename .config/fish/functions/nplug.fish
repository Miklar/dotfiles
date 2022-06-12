function nplug --wraps=./config/nvim/lua/plugins.lua --wraps='nvim ./config/nvim/lua/plugins.lua' --wraps='nvim ~/.config/nvim/lua/plugins.lua' --description 'alias nplug=nvim ~/.config/nvim/lua/plugins.lua'
  nvim ~/.config/nvim/lua/plugins.lua $argv; 
end
