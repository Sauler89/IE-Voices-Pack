-- IE-Voices-Pack: selected custom portraits, for the vanilla EE and Infinity UI++.
ivpCustomPortraits = ivpCustomPortraits or {}
function ivpRegisterCustomPortraits()
    if type(portraits) ~= 'table' then return end
    for _, portrait in ipairs(ivpCustomPortraits) do
        local present = false
        for _, existing in ipairs(portraits) do
            if existing[1] == portrait[1] then present = true; break end
        end
        if not present then table.insert(portraits, {portrait[1], portrait[2]}) end
    end
end
-- UI++ rebuilds the default list when START opens. Preserve selected custom entries.
if type(rgGetGameEnginePortraits) == 'function' then
    local ivpOriginalPortraitList = rgGetGameEnginePortraits
    rgGetGameEnginePortraits = function(...)
        ivpOriginalPortraitList(...)
        ivpRegisterCustomPortraits()
    end
end
