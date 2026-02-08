local function ToggleSelfHighlight()
	-- Get current state of the self-highlight outline setting
	local isSelfHighlightEnabled = C_CVar.GetCVarBool("findYourselfModeOutline")

	-- Toggle all related self-highlight settings
	local newSelfHighlightState = isSelfHighlightEnabled and "0" or "1"
	C_CVar.SetCVar("findYourselfModeIcon", newSelfHighlightState)
	C_CVar.SetCVar("findYourselfModeOutline", newSelfHighlightState)

	-- Print status message
	print("|cffffffffSelf Highlight:|r", newSelfHighlightState == "1" and "|cff00ff00ON|r" or "|cff808080OFF|r")
end

BINDING_HEADER_SHL = "Self Highlight"
BINDING_NAME_TOGGLESHL = "Toggle self-highlight on or off"
SLASH_SELFHIGHLIGHT1 = "/selfhighlight"
SLASH_SELFHIGHLIGHT2 = "/shl"
SlashCmdList["SELFHIGHLIGHT"] = ToggleSelfHighlight

function QuickSelfHighlight_Toggle()
	ToggleSelfHighlight()
end