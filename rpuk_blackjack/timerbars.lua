-- Credits to rootcause
local safeZone = (1.0 - GetSafeZoneSize()) * 0.5
local timerBar = {
    baseX = 0.918,
    baseY = 0.984,
    baseWidth = 0.165,
    baseHeight = 0.035,
    baseGap = 0.038,
    titleX = 0.012,
    titleY = -0.009,
    textX = 0.0785,
    textY = -0.0165,
    progressX = 0.047,
    progressY = 0.0015,
    progressWidth = 0.0616,
    progressHeight = 0.0105,
    txtDict = "timerbars",
    txtName = "all_black_bg",
}

function DrawTimerProgressBar(idx, title, progress, titleColor, fgColor, bgColor, usePlayerStyle)
    local _title = title or ""
    local _titleColor = titleColor or { 255, 255, 255, 255 }
    local _progress = progress or false
    local _fgColor = fgColor or { 255, 255, 255, 255 }
    local _bgColor = bgColor or { 255, 255, 255, 255 }
    local titleScale = usePlayerStyle and 0.465 or 0.3
    local titleFont = usePlayerStyle and 4 or 0
    local titleFontOffset = usePlayerStyle and 0.00625 or 0.0

    local yOffset = (timerBar.baseY - safeZone) - ((idx[1] or 0) * timerBar.baseGap)

    if not HasStreamedTextureDictLoaded(timerBar.txtDict) then
        RequestStreamedTextureDict(timerBar.txtDict, true)

        local t = GetGameTimer() + 5000

        repeat
            Citizen.Wait(0)
        until HasStreamedTextureDictLoaded(timerBar.txtDict) or (GetGameTimer() > t)
    end

    DrawSprite(timerBar.txtDict, timerBar.txtName, timerBar.baseX - safeZone, yOffset, timerBar.baseWidth,
															timerBar.baseHeight, 0.0, 255, 255, 255, 160)

    BeginTextCommandDisplayText("CELL_EMAIL_BCON")
    SetTextFont(titleFont)
    SetTextScale(titleScale, titleScale)
    SetTextColour(_titleColor[1], _titleColor[2], _titleColor[3], _titleColor[4])
    SetTextRightJustify(true)
    SetTextWrap(0.0, (timerBar.baseX - safeZone) + timerBar.titleX)
    AddTextComponentSubstringPlayerName(_title)
    EndTextCommandDisplayText((timerBar.baseX - safeZone) +timerBar.titleX, yOffset + timerBar.titleY - titleFontOffset)

    _progress = (_progress < 0.0) and 0.0 or ((_progress > 1.0) and 1.0 or _progress)
    local progressX = (timerBar.baseX - safeZone) + timerBar.progressX
    local progressY = yOffset + timerBar.progressY
    local progressWidth = timerBar.progressWidth * _progress

    DrawRect(progressX, progressY, timerBar.progressWidth, timerBar.progressHeight,
								_bgColor[1], _bgColor[2], _bgColor[3], _bgColor[4])
    DrawRect((progressX - timerBar.progressWidth / 2) + progressWidth / 2, progressY,
			progressWidth, timerBar.progressHeight, _fgColor[1], _fgColor[2], _fgColor[3], _fgColor[4])

    if idx ~= nil then
        if idx[1] then
            idx[1] = idx[1] + 1
        end
    end
end

function DrawTimerBar(idx, title, text, titleColor, textColor, usePlayerStyle)
    local _title = title or ""
    local _text = text or ""
    local _titleColor = titleColor or { 255, 255, 255, 255 }
    local _textColor = textColor or { 255, 255, 255, 255 }
    local titleScale = usePlayerStyle and 0.465 or 0.3
    local titleFont = usePlayerStyle and 4 or 0
    local titleFontOffset = usePlayerStyle and 0.00625 or 0.0

    local yOffset = (timerBar.baseY - safeZone) - ((idx[1] or 0) * timerBar.baseGap)

    if not HasStreamedTextureDictLoaded(timerBar.txtDict) then
        RequestStreamedTextureDict(timerBar.txtDict, true)

        local t = GetGameTimer() + 5000

        repeat
            Citizen.Wait(0)
        until HasStreamedTextureDictLoaded(timerBar.txtDict) or (GetGameTimer() > t)
    end

    DrawSprite(timerBar.txtDict, timerBar.txtName, timerBar.baseX - safeZone, yOffset,
						timerBar.baseWidth, timerBar.baseHeight, 0.0, 255, 255, 255, 160)

    BeginTextCommandDisplayText("CELL_EMAIL_BCON")
    SetTextFont(titleFont)
    SetTextScale(titleScale, titleScale)
    SetTextColour(_titleColor[1], _titleColor[2], _titleColor[3], _titleColor[4])
    SetTextRightJustify(true)
    SetTextWrap(0.0, (timerBar.baseX - safeZone) + timerBar.titleX)
    AddTextComponentSubstringPlayerName(_title)
    EndTextCommandDisplayText((timerBar.baseX - safeZone) +timerBar.titleX, yOffset + timerBar.titleY - titleFontOffset)

    BeginTextCommandDisplayText("CELL_EMAIL_BCON")
    SetTextFont(0)
    SetTextScale(0.425, 0.425)
    SetTextColour(_textColor[1], _textColor[2], _textColor[3], _textColor[4])
    SetTextRightJustify(true)
    SetTextWrap(0.0, (timerBar.baseX - safeZone) + timerBar.textX)
    AddTextComponentSubstringPlayerName(_text)
    EndTextCommandDisplayText((timerBar.baseX - safeZone) + timerBar.textX, yOffset + timerBar.textY)

    if idx ~= nil then
        if idx[1] then
            idx[1] = idx[1] + 1
        end
    end
end