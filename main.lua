-- Delta
local url = "https://raw.githubusercontent.com/FloppaMakerStart/UltraHubOfficial/refs/heads/main/obfuscated.lua"

local success, content = pcall(function()
    return game:HttpGet(url, true)
end)

if success and content then
    print("✅ Script loaded, size: " .. #content .. " part")
    local func, err = loadstring(content)
    if func then
        print("🚀 Running...")
        func()
    else
        warn("❌ Error with something: " .. tostring(err))
    end
else
    warn("❌ Error loading with github: " .. tostring(content))
end
