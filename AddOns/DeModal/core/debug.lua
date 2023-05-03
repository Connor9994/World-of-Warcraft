local _, PKG = ...

local D = DLAPI -- the DebugLog addon
local P = Profiler -- the Stragglers CPU Profiler addon

local function EmptyFunc()
end

-- Adds local-only function refs into global namespace so that the profiler can "see" them
-- Only needed for functions that don't go into the addon scope object
-- Does nothing when the profiling addon is not enabled
local function AddProfiling(name, func)
    if not name or type(name) ~= "string" or not func or (type(func) ~= "function" and type(func) ~= "table") then
        return
    end
    local callLine, _ = strsplit("\n", debugstack(2, 1, 0), 2)
    local unit = gsub(gsub(callLine, '%[string "@Interface\\AddOns\\DeModal\\', ""), '%.lua".*', "")
    unit = gsub(gsub(unit, '\\', "::"), '/', "::")
    local gName = "DeModal_" .. unit
    if not _G[gName] then
        _G[gName] = {}
    end
    _G[gName][name] = func
end

local function Debug(...)
    local msg = ""
    for i = 1, select("#", ...) do
        msg = msg .. tostring(select(i, ...)) .. " "
    end
    D.DebugLog("DeModal", "%s", msg)
end

local function Trace()
    D.DebugLog("DeModalTrace", "%s", "======== Trace ==")
    for i, v in ipairs({("\n"):split(debugstack(2))}) do
        if v ~= "" then
            D.DebugLog("DeModalTrace", "%d: %s", i, v)
        end
    end
    D.DebugLog("DeModalTrace", "%s", "-----------------")
end

if D then
    PKG.Debug = Debug
    PKG.Trace = Trace
    SetCVar("fstack_preferParentKeys", 0)
    Debug("DebugLog setup complete")
else
    PKG.Debug = EmptyFunc
    PKG.Trace = EmptyFunc
end

if P then
    PKG.AddProfiling = AddProfiling
else
    PKG.AddProfiling = EmptyFunc
end
