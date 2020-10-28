ModUtil.RegisterMod( "NoSwap" )
--[[
The hotkey still works but the button is hidden allowing form ore custom characters to fit on screen
and to not accidentally switch when getting a talisman
]]--
local config = {
}

ModUtil.WrapBaseFunction( "DisplayDraftScreen", function(baseFunc )
    local ret = baseFunc()
    SetMenuOptions({ Name = "RosterScreen", Item = "YButton", Properties = {OffsetY = 400} })
    return ret
end, NoSwap)

ModUtil.WrapBaseFunction( "ViewTeam", function(baseFunc, team )
	local ret = baseFunc(team)
	SetMenuOptions({ Name = "RosterScreen", Item = "YButton", Properties = {OffsetY = 400} })
	return ret
end, NoSwap)