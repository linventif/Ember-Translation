local function giveStorePermaWeapons (ply)
	if (!IsValid(ply) || ply:IsBot()) then return end
	if (ember.perma_weapons[ply:SteamID64()] != nil) then
		for k, v in pairs(ember.perma_weapons[ply:SteamID64()]) do
			if v == "boost_health" then
				ply:ChatPrint("Active Shop Pack : Health Boost")
				ply:SetMaxHealth(200)
				ply:SetHealth(200)
			elseif v == "boost_armor" then
				ply:ChatPrint("Active Shop Pack : Armor Boost")
				ply:SetArmor(100)
			elseif v == "boost_ammo" then
				ply:ChatPrint("Active Shop Pack : Ammo Boost")
				for i = 1, 100 do -- higher the number if you don't have all ammo type give
					ply:SetAmmo(9999, i)
				end
			else
				ply:ChatPrint("Active Shop Pack : " .. v)
				ply:Give(v)
			end
		end
	end
end

hook.Add("PlayerLoadout", "ember_spawn_give_store_perma_weapons", giveStorePermaWeapons)
-- hook.Add("OnPlayerChangedTeam", "ember_changed_team_give_store_perma_weapons", giveStorePermaWeapons)

function ember.handleUserDetails (ply)
	if (!IsValid(ply)) then return end
	if (ply:IsBot()) then return end
	if (ember.userData[ply:SteamID64()] == nil) then return end

	local plyData = ember.userData[ply:SteamID64()]

	local save_playData = plyData

	ember.userData[ply:SteamID64()] = nil

	if (ember.groupSync.receive) then
		ember.print("Syncing the group of "..ply:Nick().."("..ply:SteamID64()..")")
		local curGroup = ply:GetUserGroup()

		if (next(plyData['roles']) == nil) then -- initial sync to the server
			local revoked = (next(plyData['revoked_roles']) != nil) -- this check is to avoid revoking unsynced roles

			if (!revoked) then
				for k, v in pairs(plyData['revoked_roles']) do
					if (v == curGroup) then
						revoked = true
						break
					end
				end
			end

			if (!revoked) then
				if (curGroup != "user") then
					ember.setUserGroup(ply, curGroup) -- reapply existing group, causing it to be synced
				end
			else
				ember.setUserGroup(ply, "user")
			end
		else
			if (curGroup != plyData['roles'][1]) then
				ember.setUserGroup(ply, plyData['roles'][1])
			end
		end
	end

	if (next(plyData['store_package_purchases']['expiring']) != nil) then
		ember.print("Running package expiry actions for "..ply:Name().." ("..ply:SteamID64()..")")
		for _, purchase in pairs(plyData['store_package_purchases']['expiring']) do
			ember.exp_package[ply:SteamID64()] = purchase['store_package']
			ember.print("Revoking the expired "..ember.exp_package[ply:SteamID64()].name.." package from "..ply:Name().." ("..ply:SteamID64()..")")
			ply:ChatPrint( "Your "..ember.exp_package[ply:SteamID64()].name.." package has expired." )
			if (ember.exp_package[ply:SteamID64()].role != nil and ply:IsUserGroup(ember.exp_package[ply:SteamID64()].role.ingame_equivalent)) then
				ember.setUserGroup(ply, "user") -- revoke the group
			end
			if (ember.exp_package[ply:SteamID64()].expiry_lua != nil) then
				RunString("local ply = player.GetBySteamID('"..ply:SteamID().."');"..ember.exp_package[ply:SteamID64()].expiry_lua, "ember", true)
			end
			ember.exp_package[ply:SteamID64()] = nil -- clear the temporary table
		end
	end

	if (next(plyData['store_package_purchases']['unredeemed']) != nil) then
		ember.print("Redeeming packages for "..ply:Name().." ("..ply:SteamID64()..")")
		for _, purchase in pairs(plyData['store_package_purchases']['unredeemed']) do
			ember.print("Redeeming the "..purchase['store_package'].name.." package for "..ply:Name()..".")
			ply:ChatPrint("Vous avez recu le pack : "..purchase['store_package'].name.."")
			if (purchase['store_package'].role != nil) then
				ember.setUserGroup(ply, purchase['store_package'].role.ingame_equivalent)
			end
			timer.Simple(10, function()
				if (purchase['store_package'].darkrpmoney != nil) then
					ply:addMoney(purchase['store_package'].darkrpmoney)
				end
				if (purchase['store_package'].pspoints != nil) then
					ply:PS_GivePoints(purchase['store_package'].pspoints)
				end
				if (purchase['store_package'].ps2points != nil) then
					ply:PS2_AddStandardPoints(purchase['store_package'].ps2points)
				end
				if (purchase['store_package'].ps2premiumpoints != nil) then
					ply:PS2_AddPremiumPoints(purchase['store_package'].ps2premiumpoints)
				end
				if (purchase['store_package'].lua != nil) then
					ember.package[ply:SteamID64()] = purchase['store_package']
					RunString("local ply = player.GetBySteamID('"..ply:SteamID().."');"..ember.package[ply:SteamID64()].lua, "ember", true)
					ember.package[ply:SteamID64()] = nil -- clear the temporary table
				end
			end)
		end
	end

	if (next(plyData['perma_weapons']) != nil) then
		ember.perma_weapons[ply:SteamID64()] = {}
		ember.print("Loading permanent weapons for "..ply:Name().." ("..ply:SteamID64()..")")
		for k, v in pairs(plyData['perma_weapons']) do
			table.insert(ember.perma_weapons[ply:SteamID64()],v) -- store weapons to be given each spawn
		end
	end

	table.insert(ember.usersProcessed, ply:SteamID64())
end
hook.Add("PlayerInitialSpawn", "ember_initial_spawn_store", ember.handleUserDetails)

hook.Add("canDropWeapon", "ember_darkrp_prevent_perma_weapon_drop", function(ply, weapon)
	if (not GAMEMODE.Config.dropspawnedweapons and ember.perma_weapons[ply:SteamID64()] != nil and table.HasValue(ember.perma_weapons[ply:SteamID64()], weapon:GetClass())) then
		return false
	end
end)
