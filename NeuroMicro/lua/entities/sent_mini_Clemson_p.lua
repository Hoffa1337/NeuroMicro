ENT.FolderName 			= "sent_mini_clemson_p"
ENT.Type 				= "vehicle"
ENT.Base 				= "base_anim"
ENT.PrintName			= "Clemson Class Destroyer"
ENT.Author				= "Hoffa / StarChick971 / Killstr3aks"
ENT.Category 			= "NeuroTec Micro Naval";
ENT.Spawnable			= true
ENT.AdminSpawnable 		= true
ENT.MicroSpectactularDeath 	= true
ENT.IsMicroCruiser 		= true 
ENT.CanTurnStationary	= true
ENT.HasNPCAntiAir = false 
ENT.WaterRippleScale = .5
ENT.KeepUpWeight = 750
ENT.TurnAngleValue = 18
-- Variables
ENT.CamDist 			= 300
ENT.CamUp 				= 78
ENT.CameraMinZ			= 78 
ENT.WorldScale 			= 0.0915 -- 1/16th of original size
ENT.InitialHealth 		= 20000
--  Weapon data
ENT.BarrelLength 		= 35
ENT.IPPShellVelocity 	= 4050 -- speed of shell. Higher velocity = lower arc.
ENT.MinRange 			= 0 
ENT.MaxRange 			= 44000
ENT.MaxVelocity 		= 800
ENT.MinVelocity 		= -400
ENT.ForwardSpeed 		= ENT.MaxVelocity/4
ENT.ReverseSpeed 		= ENT.MinVelocity/2
ENT.TurnModifierValue 	= 1.1 	
ENT.FullSink 			= 0.71045/4
ENT.HalfSink 			= 0.71045/2
ENT.BuoyancyRatio 		= 8
ENT.DampFactor 			= 1.7
-- ENT.Mass				= 50000
-- positions
ENT.WaterBreakPosition = Vector( 260,0,-20 )
ENT.PeriscopePosition 	= Vector( 20, -0, 75 )
ENT.ExitPos 			= Vector( 664, -158, 1158 )*.0915
ENT.CockpitviewPosition = Vector( 113, 0, 31 )
ENT.ExhaustPosition 	= {Vector( -15, 0, 70 ),
							Vector( 3, 0, 70 ),
							Vector( 42, 0, 70 ),
							Vector( 60, 0, 70 )}


-- Speed & Sounds
ENT.EngineSoundPath 	= "Misc/water_movement.wav"--"vehicles/diesel_loop2.wav" 
ENT.Model 				= "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_hull.mdl"
ENT.DeckModel = ""
ENT.PropellerPosition = Vector(-220, 0, 0 )
ENT.PropellerSplashSize = 15 
ENT.PropellerPos = Vector( -219, 0, -6 )
-- Weapon Data
ENT.NumberOfWeaponGroups = 3
ENT.WeaponGroupIcons = { "vgui/ui/ui_he.png", "vgui/ui/ui_torp.png", "vgui/ui/ui_depthcharge.png" }
-- 2D Boat Texture
ENT.HUDData = { Background = Material("vgui/ui/ships/clemson.png" ), 
				W = 232, 
				H = 516, 
				X = 100, 
				Y = 400,
				Rotation = 0}

ENT.WeaponSystems = {
	{
		_2Dpos = { x = 0,y = -170, size = 64, icon = Material( "vgui/ui/ships/clemson_maingun.png" ), iconSize = 45 },
		Name = "Mark 9 100mm",
		Base = "models/props_junk/garbage_metalcan002a.mdl",
		BPos =Vector( 160, -0, 28 ),
		Turret = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_turret.mdl",
		TPos = Vector( 160, -0, 28 ),
		Barrel = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_cannon.mdl",
		BaPos = Vector( 160, -0, 34 ),
		BarrelLength = 5,
		AmmoType = "sent_mini_naval_shell",
		AmmoModel = "",
		Cooldown = 6, -- testing
		Damage = 500,
		Radius = 40,
		PenetrationDepth = 6, -- units
		MaxYaw = 140,
		TowerTurnSpeed = 1.3,
		ShootSound = "cannons/5-inch_shot_"..math.random(1,3)..".wav",
		Muzzle = "MG_muzzleflash",
		NumShots = 1,
		WeaponGroup = 1
		-- BarrelPorts =  { Vector( 355, -124, 4 )*.0915, Vector( 355, -1, 3 )*.0915,Vector( 355, 128, 2 )*.0915 } -- use this if you want to use a single model with more than 1 barrel.
	},
	{
		_2Dpos = { x = 15,y = -30, size = 64, icon = Material( "vgui/ui/ships/clemson_maingun.png" ), iconSize = 45 },
		Name = "Mark 9 100mm",
		Base = "models/props_junk/garbage_metalcan002a.mdl",
		BPos =Vector( 27, -15, 37 ),
		Turret = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_turret.mdl",
		TPos = Vector( 27, -15, 37 ),
		TAng = Angle( 0, -90, 0 ),
		Barrel = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_cannon.mdl",
		BaPos = Vector( 27, -15, 43 ),
		BarrelLength = 5,
		AmmoType = "sent_mini_naval_shell",
		AmmoModel = "",
		Cooldown = 6, -- testing
		Damage = 500,
		Radius = 40,
		PenetrationDepth = 6, -- units
		MaxYaw = 70,
		TowerTurnSpeed = 1.3,
		ShootSound = "cannons/5-inch_shot_"..math.random(1,3)..".wav",
		Muzzle = "MG_muzzleflash",
		NumShots = 1,
		WeaponGroup = 1
		-- BarrelPorts =  { Vector( 355, -124, 4 )*.0915, Vector( 355, -1, 3 )*.0915,Vector( 355, 128, 2 )*.0915 } -- use this if you want to use a single model with more than 1 barrel.
	},
	{
		_2Dpos = { x = -15,y = -30, size = 64, icon = Material( "vgui/ui/ships/clemson_maingun.png" ), iconSize = 45 },
		Name = "Mark 9 100mm",
		Base = "models/props_junk/garbage_metalcan002a.mdl",
		BPos =Vector( 117, -0, 20 ),
		Turret = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_turret.mdl",
		TPos = Vector( 27, 15, 37 ),
		TAng = Angle( 0, 90, 0 ),
		Barrel = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_cannon.mdl",
		BaPos = Vector( 27, 15, 43 ),
		BarrelLength = 5,
		AmmoType = "sent_mini_naval_shell",
		AmmoModel = "",
		Cooldown = 6, -- testing
		Damage = 500,
		Radius = 40,
		PenetrationDepth = 6, -- units
		MaxYaw = 70,
		TowerTurnSpeed = 1.3,
		ShootSound = "cannons/5-inch_shot_"..math.random(1,3)..".wav",
		Muzzle = "MG_muzzleflash",
		NumShots = 1,
		WeaponGroup = 1
		-- BarrelPorts =  { Vector( 355, -124, 4 )*.0915, Vector( 355, -1, 3 )*.0915,Vector( 355, 128, 2 )*.0915 } -- use this if you want to use a single model with more than 1 barrel.
	},
	{
		_2Dpos = { x = 0,y = 160, size = 64, icon = Material( "vgui/ui/ships/clemson_maingun.png" ), iconSize = 45 },
		Name = "Mark 9 100mm",
		Base = "models/props_junk/garbage_metalcan002a.mdl",
		BPos =Vector( -160, -0, 32 ),
		Turret = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_turret.mdl",
		TPos = Vector( -160, -0, 32 ),
		TAng = Angle( 0, 180, 0 ),
		Barrel = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_cannon.mdl",
		BaPos = Vector( -160, -0, 38 ),
		BarrelLength = 5,
		AmmoType = "sent_mini_naval_shell",
		AmmoModel = "",
		Cooldown = 6, -- testing
		Damage = 500,
		Radius = 40,
		PenetrationDepth = 6, -- units
		MaxYaw = 140,
		TowerTurnSpeed = 1.3,
		ShootSound = "cannons/5-inch_shot_"..math.random(1,3)..".wav",
		Muzzle = "MG_muzzleflash",
		NumShots = 1,
		WeaponGroup = 1
		-- BarrelPorts =  { Vector( 355, -124, 4 )*.0915, Vector( 355, -1, 3 )*.0915,Vector( 355, 128, 2 )*.0915 } -- use this if you want to use a single model with more than 1 barrel.
	},
	{	
			_2Dpos = { x = -15,y = 110, size = 64, icon = Material( "vgui/ui/ships/clemson_torpturret.png" ), iconSize = 40 },
			Name = "Torpedo Launcher",
			Base = "models/props_junk/garbage_metalcan002a.mdl",
			BPos = Vector( -35, 10, 21 ),
			Turret = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_torpturret.mdl",
			TPos = Vector( -35, 10, 21 ),
			TAng = Angle( 0, 90, 0 ),
			Barrel = "models/NeuroNaval/StarChick971/Ships/Iver Huitfeldt_cannon2.mdl",
			BaPos = Vector( -35, 10, 26 ),
			BarrelLength = 45,
			DontAnimateBarrel = true, 
			AmmoType = "sent_mini_torpedo",
			AmmoModel = "",
			Cooldown = 15, -- testing
			ShellVelocity = 45, -- units/s  
			Damage = 7500,
			Radius = 50,
			PenetrationDepth = 20, -- units
			MaxYaw = 45,
			TowerTurnSpeed = 1,
			-- ShootSound = "Misc/hitmarker_sound.wav",
			Muzzle = "",
			NumShots = 3,
			WeaponGroup = 2,
			GroupedShotDelay = 1,
			-- BarrelPorts =  { Vector( 19, -8, 5 ), Vector( 19, -3.25, 5 ),Vector( 19, 3.25, 5 ), Vector( 19, 8, 5 )} 
			},
			{	
			_2Dpos = { x = -15,y = 30, size = 64, icon = Material( "vgui/ui/ships/clemson_torpturret.png" ), iconSize = 40 },
			Name = "Torpedo Launcher",
			Base = "models/props_junk/garbage_metalcan002a.mdl",
			BPos = Vector( -105, 10, 21 ),
			Turret = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_torpturret.mdl",
			TPos = Vector( -105, 10, 21 ),
			TAng = Angle( 0, 90, 0 ),
			Barrel = "models/NeuroNaval/StarChick971/Ships/Iver Huitfeldt_cannon2.mdl",
			BaPos = Vector( -105, 10, 26 ),
			BarrelLength = 45,
			DontAnimateBarrel = true, 
			AmmoType = "sent_mini_torpedo",
			AmmoModel = "",
			Cooldown = 15, -- testing
			ShellVelocity = 45, -- units/s  
			Damage = 7500,
			Radius = 50,
			PenetrationDepth = 20, -- units
			MaxYaw = 45,
			TowerTurnSpeed = 1,
			-- ShootSound = "Misc/hitmarker_sound.wav",
			Muzzle = "",
			NumShots = 3,
			WeaponGroup = 2,
			GroupedShotDelay = 1,
			-- BarrelPorts =  { Vector( 19, -8, 5 ), Vector( 19, -3.25, 5 ),Vector( 19, 3.25, 5 ), Vector( 19, 8, 5 )} 
			},
			{	
			_2Dpos = { x = 15,y = 120, size = 64, icon = Material( "vgui/ui/ships/clemson_torpturret.png" ), iconSize = 40 },
			Name = "Torpedo Launcher",
			Base = "models/props_junk/garbage_metalcan002a.mdl",
			BPos = Vector( -120, -10, 21 ),
			Turret = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_torpturret.mdl",
			TPos = Vector( -120, -10, 21 ),
			TAng = Angle( 0, -90, 0 ),
			Barrel = "models/NeuroNaval/StarChick971/Ships/Iver Huitfeldt_cannon2.mdl",
			BaPos = Vector( -120, -10, 26 ),
			BarrelLength = 45,
			DontAnimateBarrel = true, 
			AmmoType = "sent_mini_torpedo",
			AmmoModel = "",
			Cooldown = 15, -- testing
			ShellVelocity = 45, -- units/s  
			Damage = 7500,
			Radius = 50,
			PenetrationDepth = 20, -- units
			MaxYaw = 45,
			TowerTurnSpeed = 1,
			-- ShootSound = "Misc/hitmarker_sound.wav",
			Muzzle = "",
			NumShots = 3,
			WeaponGroup = 2,
			GroupedShotDelay = 1,
			-- BarrelPorts =  { Vector( 19, -8, 5 ), Vector( 19, -3.25, 5 ),Vector( 19, 3.25, 5 ), Vector( 19, 8, 5 )} 
			},
			{	
			_2Dpos = { x = 15,y = 50, size = 64, icon = Material( "vgui/ui/ships/clemson_torpturret.png" ), iconSize = 40 },
			Name = "Torpedo Launcher",
			Base = "models/props_junk/garbage_metalcan002a.mdl",
			BPos = Vector( -50, -10, 21 ),
			Turret = "models/NeuroNaval/Killstr3aKs/American/Destroyers/clemson_torpturret.mdl",
			TPos = Vector( -50, -10, 21 ),
			TAng = Angle( 0, -90, 0 ),
			Barrel = "models/NeuroNaval/StarChick971/Ships/Iver Huitfeldt_cannon2.mdl",
			BaPos = Vector( -50, -10, 26 ),
			BarrelLength = 45,
			DontAnimateBarrel = true, 
			AmmoType = "sent_mini_torpedo",
			AmmoModel = "",
			Cooldown = 15, -- testing
			ShellVelocity = 45, -- units/s  
			Damage = 7500,
			Radius = 50,
			PenetrationDepth = 20, -- units
			MaxYaw = 45,
			TowerTurnSpeed = 1,
			-- ShootSound = "Misc/hitmarker_sound.wav",
			Muzzle = "",
			NumShots = 3,
			WeaponGroup = 2,
			GroupedShotDelay = 1,
			-- BarrelPorts =  { Vector( 19, -8, 5 ), Vector( 19, -3.25, 5 ),Vector( 19, 3.25, 5 ), Vector( 19, 8, 5 )} 
			},
			{	
			_2Dpos = { x = 0,y = 150, size = 64, icon = Material( "vgui/ui/ships/clemson_torpturret.png" ), iconSize = 40 },
			Name = "Depth Charge",
			Base = "models/neuronaval/killstr3aks/american/destroyers/mini_depth_charge.mdl",
			BPos = Vector( -213, 10, 23 ),
			Turret = "models/neuronaval/killstr3aks/american/destroyers/mini_depth_charge.mdl",
			TPos = Vector( -213, 10, 23 ),
			TAng = Angle( 0, 180, 0 ),
			Barrel = "models/neuronaval/killstr3aks/american/destroyers/mini_depth_charge.mdl",
			BaPos = Vector( -213, 10, 23 ),
			BarrelLength = 0,
			DontAnimateBarrel = true, 
			AmmoType = "sent_micro_depthcharge",
			AmmoModel = "",
			Cooldown = 20, -- testing
			ShellVelocity = 45, -- units/s  
			Damage = 7500,
			Radius = 180,
			PenetrationDepth = 20, -- units
			MaxYaw = 180,
			TowerTurnSpeed = 0,
			-- ShootSound = "Misc/hitmarker_sound.wav",
			Muzzle = "",
			NumShots = 12,
			WeaponGroup = 3,
			GroupedShotDelay = 1,
			-- BarrelPorts =  { Vector( 19, -8, 5 ), Vector( 19, -3.25, 5 ),Vector( 19, 3.25, 5 ), Vector( 19, 8, 5 )} 
			}
			
}

			
if SERVER then
	AddCSLuaFile(  )
			
	function ENT:SpawnFunction( ply, tr, class )
		local tr,trace = {},{}
		tr.start = ply:GetShootPos()
		tr.endpos = tr.start + ply:GetAimVector() * 12500
		tr.filter = ply
		tr.mask = MASK_WATER + MASK_SOLID
		trace = util.TraceLine( tr )
		local SpawnPos = trace.HitPos + trace.HitNormal * 1
		local ent = ents.Create( class )
		ent:SetPos( SpawnPos )
		ent.Owner = ply 
		ent:SetAngles( ply:GetAngles() )
		ent:Spawn()
		ent:Activate()
		return ent
	end
	function ENT:Initialize() self:NeuroNaval_DefaultCruiserInit() end
	function ENT:OnRemove() self:NeuroNaval_DefaultRemove() end
	function ENT:PhysicsCollide( data, physobj )self:NeuroNaval_DefaultCollisionCallback( data, physobj ) end
	function ENT:Use(ply,caller) self:NeuroNaval_DefaultUse( ply, caller )end
	function ENT:PhysicsUpdate() self:NeuroNaval_DefaultPhysicsUpdate() end
	function ENT:OnTakeDamage(dmginfo) self:NeuroNaval_DefaultDamage( dmginfo ) end
	function ENT:Think() self:NeuroNaval_DefaultCruiserThink() end
	function ENT:PhysicsSimulate( phys, deltatime ) self:NeuroNaval_DefaultPhysSimulate( phys, deltatime ) self:CaptainHasGunsThink() end
end 
if CLIENT then

	function ENT:Initialize() self:DefaultNavalClientInit() end
	function ENT:CalcView( ply, Origin, Angles, Fov ) return NeuroNaval_DefaultBoatCView( ply, Origin, Angles, Fov, self ) end
	function ENT:Draw() 
		self:DefaultMicroShitExhaust() 

		end 

end 
