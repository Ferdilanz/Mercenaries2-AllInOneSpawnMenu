local KEYVAL = "f7"

--=====================================================================

local UI = _G.Ess and _G.Ess.UI
if not (UI and UI.Menu) then
    Loader.Printf("SpawnMenu: load Ess (dist/Ess.lua) first"); return
end

local menu = Ess.UI.Menu{ title = "Pickup Spawner by Ferdilanz", key = KEYVAL }

menu:category("Pickups",function(ba)
	ba:category("Player Pickups", function(ab)
		ab:entry("Health", function(ctx) ctx:spawn("Health Pickup", 2); ctx:hint("SPAWNED") end)
		ab:entry("Ammunition", function(ctx) ctx:spawn("Ammo Pickup (Bullet)", 2); ctx:hint("SPAWNED") end)
		ab:entry("Ammunition (Small)", function(ctx) ctx:spawn("Ammo Pickup (Small)", 2); ctx:hint("SPAWNED") end)
		ab:entry("C4 (x1)", function(ctx) ctx:spawn("Ammo Pickup (1xC4)", 2); ctx:hint("SPAWNED") end)
		ab:entry("C4 (Full)", function(ctx) ctx:spawn("Ammo Pickup (Full C4)", 2); ctx:hint("SPAWNED") end)
		ab:entry("Grenades (x1)", function(ctx) ctx:spawn("Ammo Pickup (Single Grenade)", 0); ctx:hint("SPAWNED (INSTANT PICKUP)") end)
		ab:entry("Grenades (Full)", function(ctx) ctx:spawn("Ammo Pickup (Grenades)", 2); ctx:hint("SPAWNED") end)
		ab:entry("Rockets", function(ctx) ctx:spawn("Ammo Pickup (Rocket)", 2); ctx:hint("SPAWNED") end)
		ab:entry("Fuel (x50)", function(ctx) ctx:spawn("Fuel Pickup (Large)", 2); ctx:hint("SPAWNED") end)
		ab:entry("Fuel (x25)", function(ctx) ctx:spawn("Fuel Pickup (Small)", 2); ctx:hint("SPAWNED") end)
		ab:entry("Cash ($25k Briefcase)", function(ctx) ctx:spawn("Cash (Case)", 2); ctx:hint("SPAWNED") end)
		ab:entry("Cashwad ($5k)", function(ctx) ctx:spawn("Cash (Medium)", 2); ctx:hint("SPAWNED") end)
		ab:entry("Cashwad ($1k)", function(ctx) ctx:spawn("Cash (Small)", 2); ctx:hint("SPAWNED") end)
	end)
	ba:category("Stealable Pallets", function(ac)
		ac:entry("Cash", function(ctx) ctx:spawn("Cash (Large)", 2); ctx:hint("SPAWNED") end)
		ac:category("Laptop Munitions", function(acb)
			acb:entry("Carpet Bomb", function(ctx) ctx:spawn("Munitions (Carpet Bomb)", 2); ctx:hint("SPAWNED") end)
			acb:entry("Cruise Missile", function(ctx) ctx:spawn("Munitions (Cruise Missile)", 2); ctx:hint("SPAWNED") end)
			acb:entry("Smart Bomb", function(ctx) ctx:spawn("Munitions (Smart Bomb)", 2); ctx:hint("SPAWNED") end)
			acb:entry("Strategic Missile Strike", function(ctx) ctx:spawn("Munitions (Strategic Missile)", 2); ctx:hint("SPAWNED") end)
		end)
		ac:category("Pallet Munitions", function(aca)
			aca:entry("Artillery", function(ctx) ctx:spawn("Munitions (Artillery)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Bombing Run", function(ctx) ctx:spawn("Munitions (Bombing Run)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Bunker Buster", function(ctx) ctx:spawn("Munitions (Bunker Buster)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Cluster Bomb", function(ctx) ctx:spawn("Munitions (Cluster Bomb)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Combat Air Patrol", function(ctx) ctx:spawn("Munitions (Combat Air Patrol)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Daisy Cutter", function(ctx) ctx:spawn("Munitions (Daisy Cutter)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Fuel-Air Bomb", function(ctx) ctx:spawn("Munitions (Fuel-Air Bomb)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Laser Guided Bomb", function(ctx) ctx:spawn("Munitions (Laser Guided Bomb)", 2); ctx:hint("SPAWNED") end)
			aca:entry("MOAB", function(ctx) ctx:spawn("Munitions (MOAB)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Rocket Artillery", function(ctx) ctx:spawn("Munitions (Rocket Artillery)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Surgical Strike", function(ctx) ctx:spawn("Munitions (Surgical Strike)", 2); ctx:hint("SPAWNED") end)
			aca:entry("Tank Buster", function(ctx) ctx:spawn("Munitions (Tank Buster)", 2); ctx:hint("SPAWNED") end)
		end)
	end)
end)


-- --- close button ------------------------------------------------------
menu:entry("Close Menu", function(ctx) ctx:close() end)

-- Flip the menu open/closed. (This file re-runs every time you press F9, so this line does the toggle.)
menu:toggle()