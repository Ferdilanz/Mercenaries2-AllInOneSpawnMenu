local KEYVAL = "f6"

local UI = _G.Ess and _G.Ess.UI
if not (UI and UI.Menu) then
    Loader.Printf("SpawnMenu: load Ess (dist/Ess.lua) first"); return
end

local menu = Ess.UI.Menu{ title = "Supply Drop Spawner by Ferdilanz", key = KEYVAL }

menu:category("Supply Drops", function(fa)
    fa:entry("Medical Supply Drop", function(ctx) ctx:spawn("Supply Drop (Health)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Allied Ammo Supply Drop", function(ctx) ctx:spawn("Supply Drop (AL Ammo)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Allied Light MG Supply Drop", function(ctx) ctx:spawn("Supply Drop (Light MG) (AL)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Allied Grenade Supply Drop", function(ctx) ctx:spawn("Supply Drop (AL Grenade)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Allied Medical Supply Drop", function(ctx) ctx:spawn("Supply Drop (AL Health)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Allied Supply Drop", function(ctx) ctx:spawn("Supply Drop (Allied)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Allied Anti-Materiel Drop", function(ctx) ctx:spawn("Supply Drop (AM AL)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Allied Anti-Tank Launcher Drop", function(ctx) ctx:spawn("Supply Drop (AT AL)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Anti-Air Missile Supply Drop", function(ctx) ctx:spawn("Supply Drop (AA)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Chinese Supply Drop", function(ctx) ctx:spawn("Supply Drop (Chinese)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Chinese Anti-Materiel Drop", function(ctx) ctx:spawn("Supply Drop (AM CH)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Chinese Fuel-Air RPG Drop", function(ctx) ctx:spawn("Supply Drop (AT CH)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Chinese Sniper Supply Drop", function(ctx) ctx:spawn("Supply Drop (Sniper CH)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Blanco's Supply Drop", function(ctx) ctx:spawn("Supply Drop (Blanco)", 5); ctx:hint("SPAWNED") end)
    fa:entry("C4 Supply Drop", function(ctx) ctx:spawn("Supply Drop (C4)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Covert Supply Drop", function(ctx) ctx:spawn("Supply Drop (Covert)", 5); ctx:hint("SPAWNED") end)
    fa:entry("CQB Supply Drop", function(ctx) ctx:spawn("Supply Drop (CQB)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Fiona's Favorites", function(ctx) ctx:spawn("Supply Drop (FIona)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Russian Sniper Supply Drop", function(ctx) ctx:spawn("Supply Drop (Sniper RU)", 5); ctx:hint("SPAWNED") end)
    fa:entry("PLAV Sniper Rifle Drop", function(ctx) ctx:spawn("Supply Drop (Guerilla) (Sniper)", 5); ctx:hint("SPAWNED") end)
    fa:entry("PLAV Supply Drop", function(ctx) ctx:spawn("Supply Drop (Guerilla)", 5); ctx:hint("SPAWNED") end)
    fa:entry("Pirate Supply Drop", function(ctx) ctx:spawn("Supply Drop (Pirate)", 5); ctx:hint("SPAWNED") end)
    fa:entry("RPG Supply Drop", function(ctx) ctx:spawn("Supply Drop (RPG)", 5); ctx:hint("SPAWNED") end)
    fa:entry("UP Supply Drop", function(ctx) ctx:spawn("Supply Drop (OC)", 5); ctx:hint("SPAWNED") end)
    fa:entry("UP Grenade Launcher Drop", function(ctx) ctx:spawn("Supply Drop (GL)", 5); ctx:hint("SPAWNED") end)
    fa:entry("UP Sniper Rifle Drop", function(ctx) ctx:spawn("Supply Drop (Sniper)", 5); ctx:hint("SPAWNED") end)
    fa:entry("UP Light MG Supply Drop", function(ctx) ctx:spawn("Supply Drop (Light MG)", 5); ctx:hint("SPAWNED") end)
    fa:entry("VZ Supply Drop", function(ctx) ctx:spawn("Supply Drop (VZ)", 5); ctx:hint("SPAWNED") end)
    fa:entry("VZ C4 Supply Drop", function(ctx) ctx:spawn("Supply Drop (C4) (VZ)", 5); ctx:hint("SPAWNED") end)
    fa:category("Special Supply Drops", function(faa)
        faa:entry("Empty Supply Drop", function(ctx) ctx:spawn("Supply Drop (Base)", 5); ctx:hint("SPAWNED") end)
        faa:entry("Blueprint (Treasure) Supply Drop", function(ctx) ctx:spawn("Supply Drop (Blueprints)", 5); ctx:hint("SPAWNED") end)
        faa:entry("Treasure (Blueprint) Supply Drop", function(ctx) ctx:spawn("Supply Drop (Treasure)", 5); ctx:hint("SPAWNED") end)
    end)
end)


-- --- close button ------------------------------------------------------
menu:entry("Close Menu", function(ctx) ctx:close() end)

-- Flip the menu open/closed. (This file re-runs every time you press F9, so this line does the toggle.)
menu:toggle()