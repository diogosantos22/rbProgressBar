local NUIReady = false
local NUI = {}

RegisterNUICallback('ready', function(data, cb)
    nui:config()
    cb("ok")
end)

function NUI:new()
    local obj = {
        active = false,
    }
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function NUI:start(data)
    SendNUIMessage({
        action = 'start',
        data = data,
    })
end

function NUI:stop()
    SendNUIMessage({
        action = 'stop',
    })
end

function NUI:config() 
    SendNUIMessage({
        action = 'config',
        data = Config.Settings,
    })
end


exports("start", function(time, text)
    nui:start({
        text = text or "",
        time = time / 1000,
    })
end)

nui = NUI:new()

-- RegisterCommand('testprogress', function(src, args)
--     nui:start({
--         text = "Doing certain action",
--         time = 5
--     })
-- end)


