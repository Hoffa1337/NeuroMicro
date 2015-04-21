ENT.FolderName 			= "sent_mini_hamina_p"
ENT.Type 				= "vehicle"
ENT.Base 				= "base_anim"
ENT.PrintName			= "Hamina Class Destroyer"
ENT.Author				= "Hoffa / StarChick971 / Killstr3aks"
ENT.Category 			= "NeuroTec Micro Naval";
ENT.Spawnable			= true
ENT.AdminSpawnable 		= true
ENT.MicroSpectactularDeath 	= true
ENT.IsMicroCruiser 		= true 
ENT.CanTurnStationary	= true
ENT.HasNPCAntiAir = false 
ENT.Country = "Finland"

-- Variables
ENT.CamDist 			= 330
ENT.CamUp 				= 78
ENT.CameraMinZ			= 78 
ENT.WorldScale 			= 0.0915 -- 1/16th of original size
ENT.InitialHealth 		= 17500
--  Weapon data
ENT.BarrelLength 		= 35
ENT.IPPShellVelocity 	= 4050 -- speed of shell. Higher velocity = lower arc.
ENT.MinRange 			= 0 
ENT.MaxRange 			= 44000
ENT.MaxVelocity 		= 1500
ENT.MinVelocity 		= -750
ENT.ForwardSpeed 		= ENT.MaxVelocity/4
ENT.ReverseSpeed 		= ENT.MinVelocity/2
ENT.TurnModifierValue 	=0.5	
ENT.FullSink 			= 0.71045/4
ENT.HalfSink 			= 0.71045/2
ENT.BuoyancyRatio 		= 6.971045
ENT.DampFactor 			= 1.0
-- ENT.Mass				= 50000
-- positions
ENT.WaterBreakPosition = Vector( 270,0,-30 )
ENT.PeriscopePosition 	= Vector( 20, -0, 75 )
ENT.ExitPos 			= Vector( 664, -158, 1158 )*.0915
ENT.CockpitviewPosition = Vector( 20, 0, 75 )
-- ENT.ExhaustPosition 	= Vector( -1045, 0, 1280 )
-- Speed & Sounds
ENT.EngineSoundPath 	= "Misc/water_movement.wav"--"vehicles/diesel_loop2.wav" 
ENT.Model 				= "models/NeuroNaval/StarChick971/Ships/hamina.mdl"
ENT.DeckModel = "models/NavalWar/iver huitfeldt_mortar.mdl"
ENT.PropellerPosition = Vector(-220, 0, 0 )
ENT.TurnForceValue = 54000
ENT.PropellerSplashSize = 15 
ENT.PropellerPos = Vector( -219, 0, -6 )
-- Weapon Data
ENT.NumberOfWeaponGroups = 3
ENT.WeaponGroupIcons = { "vgui/ui/ui_he.png", "vgui/ui/ui_torp.png", "vgui/ui/ui_missile1.png" }
-- 2D Boat Texture
ENT.HUDData = { Background = Material("vgui/ui/ships/hamina.png" ), 
				W = 400, 
				H = 400, 
				X = 100, 
				Y = 450,
				Rotation = 0}

ENT.WeaponSystems = {{
		_2Dpos = { x = 3,y = -100, size = 64, icon = Material( "vgui/ui/ships/hamina_maingun.png" ), iconSize = 64 },
		Name = "Bofors 57 mm",
		Base = "models/props_junk/garbage_metalcan002a.mdl",
		BPos =Vector( 117, -0, 20 ),
		Turret = "models/NeuroNaval/StarChick971/Ships/hamina_turret.mdl",
		TPos = Vector( 117, -0, 20 ),
		Barrel = "models/NeuroNaval/StarChick971/Ships/hamina_cannon.mdl",
		BaPos = Vector( 120, -0, 28.5 ),
		BarrelLength = 15,
		AmmoType = "sent_mini_naval_shell",
		AmmoModel = "",
		Cooldown = 3, -- testing
		Damage = 750,
		Radius = 40,
		PenetrationDepth = 14, -- units
		MaxYaw = 140,
		TowerTurnSpeed = 2,
		ShootSound = "Cannons/kwk40_shot_0"..math.random(1,3)..".wav",
		Muzzle = "MG_muzzleflash",
		NumShots = 1,
		WeaponGroup = 1
		-- BarrelPorts =  { Vector( 355, -124, 4 )*.0915, Vector( 355, -1, 3 )*.0915,Vector( 355, 128, 2 )*.0915 } -- use this if you want to use a single model with more than 1 barrel.
	},
	{	
			_2Dpos = { x = -15,y = 140, size = 64, icon = Material( "vgui/ui/ships/hamina_torp.png" ), iconSize = 44 },
			Name = "Torpedo Launcher",
			Base = "models/magnet/submine/submine.mdl",
			BPos = Vector( -186, 25, 7 ),
			Turret = "models/NeuroNaval/Killstr3aKs/American/Cruisers/Cruiser/cruiser_torpturret.mdl",
			TPos = Vector( -186, 25, 17 ),
			TAng = Angle( 0, 90, 0 ),
			Barrel = "models/NeuroNaval/Killstr3aKs/American/Cruisers/Cruiser/cruiser_turret_barrel.mdl",
			BaPos = Vector( -186, 25, 23 ),
			BarrelLength = 45,
			DontAnimateBarrel = true, 
			AmmoType = "sent_mini_torpedo",
			AmmoModel = "",
			Cooldown = 15, -- testing
			ShellVelocity = 45, -- units/s  
			Damage = 7500,
			Radius = 50,
			PenetrationDepth = 20, -- units
			MaxYaw = 60,
			TowerTurnSpeed = 2,
			-- ShootSound = "Misc/hitmarker_sound.wav",
			Muzzle = "",
			NumShots = 3,
			WeaponGroup = 2,
			GroupedShotDelay = 1,
			-- BarrelPorts =  { Vector( 19, -8, 5 ), Vector( 19, -3.25, 5 ),Vector( 19, 3.25, 5 ), Vector( 19, 8, 5 )} 
			},
			{	
			_2Dpos = { x = 15,y = 140, size = 64, icon = Material( "vgui/ui/ships/hamina_torp.png" ), iconSize = 44 },
			Name = "Torpedo Launcher",
			Base = "models/magnet/submine/submine.mdl",
			BPos = Vector( -186, -25, 7 ),
			Turret = "models/NeuroNaval/Killstr3aKs/American/Cruisers/Cruiser/cruiser_torpturret.mdl",
			TPos = Vector( -186, -25, 17 ),
			TAng = Angle( 0, -90, 0 ),
			Barrel = "models/NeuroNaval/Killstr3aKs/American/Cruisers/Cruiser/cruiser_turret_barrel.mdl",
			BaPos = Vector( -186, -25, 23 ),
			BarrelLength = 45,
			DontAnimateBarrel = true, 
			AmmoType = "sent_mini_torpedo",
			AmmoModel = "",
			Cooldown = 15, -- testing
			ShellVelocity = 45, -- units/s  
			Damage = 7500,
			Radius = 50,
			PenetrationDepth = 20, -- units
			MaxYaw = 60,
			TowerTurnSpeed = 2,
			-- ShootSound = "Misc/hitmarker_sound.wav",
			Muzzle = "",
			NumShots = 3,
			WeaponGroup = 2,
			GroupedShotDelay = 1,
			-- BarrelPorts =  { Vector( 19, -8, 5 ), Vector( 19, -3.25, 5 ),Vector( 19, 3.25, 5 ), Vector( 19, 8, 5 )} 
			},
			{	
			_2Dpos = { x = 0,y = 60, size = 64, icon = Material( "vgui/ui/ships/hamina_torp.png" ), iconSize = 44 },
			Name = "Missile Launcher",
			Base = "models/magnet/submine/submine.mdl",
			BPos = Vector( -75, -10, 30 ),
			Turret = "models/NeuroNaval/StarChick971/Ships/iver huitfeldt_mortar.mdl",
			TPos = Vector( -75, -10, 30 ),
			TAng = Angle( 90, 0, 0 ),
			Barrel = "models/weapons/w_missile_launch.mdl",
			BaPos = Vector( -75, -10, 20 ),
			-- BaAngle = Angle( -90, 0, 0 ),
			BarrelLength = 0,
			DontAnimateBarrel = true, 
			DontPitchBarrel = true,
			-- DontAnimateTower = true, 
			AmmoType = "sent_mini_naval_missile",
			AmmoModel = "models/starchick971/hawx/weapons/bgm-109 tomahawk.mdl",
			Cooldown = 30, -- testing
			ShellVelocity = 10, -- units/s  
			Damage = 15500,
			Radius = 128,
			PenetrationDepth = 15, -- units
			MaxYaw = 180,
			TowerTurnSpeed = 100,
			ShootSound = "BF4/Misc/SCUD_fire.wav",
			Muzzle = "microplane_MG_muzzleflash",
			NumShots = 1,
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

