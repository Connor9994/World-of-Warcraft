local _, Addon = ...
local EventManager = Addon:GetModule("EventManager")

local handlers = {
  -- ["EVENT_KEY"] = {
  --  [func] = "ON" | "ONCE",
  --  ...
  -- },
  -- ...
}

-- Helper function to validate and register an event handler.
-- @param event {string}
-- @param func {function}
-- @param eventType {string} - "ON" | "ONCE"
local function register(event, func, eventType)
  assert(type(event) == "string")
  assert(type(func) == "function")
  assert(eventType == "ON" or eventType == "ONCE")
  if not handlers[event] then handlers[event] = {} end
  handlers[event][func] = eventType
end

-- Sets up a function to be called when the specified event is fired.
-- @param event {string}
-- @param func {function}
function EventManager:On(event, func)
  register(event, func, "ON")
end

-- Sets up a function to be called and removed the next time the specified event
-- is fired.
-- @param event {string}
-- @param func {function}
function EventManager:Once(event, func)
  register(event, func, "ONCE")
end

-- Calls all registered handlers for a specified event.
-- @param event {string}
-- @param ... {vararg} - event handler arguments
function EventManager:Fire(event, ...)
  assert(type(event) == "string")
  if not handlers[event] then return end
  for func, eventType in pairs(handlers[event]) do
    func(...)

    if eventType == "ONCE" then
      handlers[event][func] = nil
    end
  end
end

-- ============================================================================
-- Event Frame
-- ============================================================================

local frame = CreateFrame("Frame")

frame:SetScript("OnEvent", function(self, event, ...)
  EventManager:Fire(event, ...)
end)

for _, event in pairs(Addon:GetModule("Events").Wow) do
  frame:RegisterEvent(event)
end
