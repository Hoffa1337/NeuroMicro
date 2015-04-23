ENT.Type = "vehicle"
ENT.Base = "base_anim"
ENT.PrintName	= "Messerschmitt ME-262 A1a"
ENT.Author	= "Hoffa / Killstr3aks"
ENT.Category 		= "NeuroTec Micro";
ENT.Spawnable	= true
ENT.AdminSpawnable = false
ENT.VehicleType = VEHICLE_PLANE

ENT.InitialHealth = 400

ENT.Model 			= "models/killstr3aks/neuroplanes/german/me262_body.mdl"
ENT.TailModel 		= "models/killstr3aks/neuroplanes/german/me_262_tail.mdl"
ENT.WingModels 		= { "models/killstr3aks/neuroplanes/german/me_262_wing_l.mdl", 
						"models/killstr3aks/neuroplanes/german/me_262_wing_r.mdl" }
ENT.PropellerModel 	= "models/props_junk/PopCan01a.mdl"
ENT.HideProp = true
ENT.NoPropeller = true
-- ENT.PropellerPos 	= {Vector( 0, 20.5, 0 ), Vector( 0, -20.5, 0 )}
-- ENT.PropellerModels 	= {"models/killstr3aks/neuroplanes/German/Me_410_propeller.mdl", "models/killstr3aks/neuroplanes/German/Me_410_propeller.mdl"}


ENT.ControlSurfaces  = {
	Elevator = { 
			Mdl = "models/killstr3aks/neuroplanes/german/me_262_elevators.mdl", 
			Pos = Vector(-45.2,0,6.5 ),
			Ang = Angle( 0,0,0 )
			};
	Rudder = {	
			Mdl = "models/killstr3aks/neuroplanes/german/me_262_rudder.mdl",
			Pos = Vector(-46.9,0,7.0),
			Ang = Angle( 0,0,0 )
			};
	Ailerons = {
			{
			Mdl = "models/killstr3aks/neuroplanes/german/me_262_aileron_l.mdl",
			Pos = Vector(-7.7,39.8,0.35),
			Ang = Angle( 0,11,5.9 )
			};
			{
			Mdl = "models/killstr3aks/neuroplanes/german/me_262_aileron_r.mdl",
			Pos = Vector(-7.7,-39.8,0.35),
			Ang = Angle( 0,-11,-5.9)
			};
		};
	Flaps = {
			{
			Mdl = "models/killstr3aks/neuroplanes/german/me_262_flap_l.mdl",
			Pos = Vector(-6.0,26,-1.2),
			Ang = Angle( 0,11,5.9 )
			};
			{
			Mdl = "models/killstr3aks/neuroplanes/german/me_262_flap_r.mdl",
			Pos = Vector(-6.0,-26,-1.2),
			Ang = Angle( 0,-11,-5.9)
			};
		};
} 
ENT.TailPos			= Vector( 0, 0, 0)
ENT.WingPositions 	= { Vector( 0,0,0 ), 
						Vector( 0,0,0 ) }
ENT.PropellerModels 	=  {"models/props_junk/PopCan01a.mdl","models/props_junk/PopCan01a.mdl"} 
ENT.PropellerAttachedToWings = true 

ENT.PropellerPos = {Vector( 0, 17, -2 ), Vector( 0, -17, -2 )   }
ENT.HideProp = true
ENT.Armament = {

					{ 
						PrintName = "Rockets",
						Mdl = "models/Items/AR2_Grenade.mdl" ,
						Pos = Vector( -4, 50, 0), 							-- Pos, Hard point location on the plane fuselage.
						Ang = Angle( 0, 0, 0), 								-- Ang, object angle
						Type = "Rocket",						-- Type, used when creating the object
						BurstSize = 10,
						Cooldown = .5, 										-- Cooldown between weapons
						isFirst	= true,										-- If a plane got 2 rockets of the same type, set the first rocket to isFirst = true.
						Class = "sent_mini_rocket",
						Color = Color( 0,0,0, 0 )
						-- LaunchSound = "vehicles/Crane/crane_magnet_release.wav"
					};
					{ 
						PrintName = "Rockets",
						Mdl = "models/Items/AR2_Grenade.mdl" ,
						Pos = Vector( -4, -50, 0), 							-- Pos, Hard point location on the plane fuselage.
						Ang = Angle( 0, 0, 0), 								-- Ang, object angle
						Type = "Rocket",						-- Type, used when creating the object
						BurstSize = 10,
						Cooldown = .5, 										-- Cooldown between weapons
						isFirst	= false,										-- If a plane got 2 rockets of the same type, set the first rocket to isFirst = true.
						Color = Color( 0,0,0, 0 ),
						Class = "sent_mini_rocket",
						-- LaunchSound = "vehicles/Crane/crane_magnet_release.wav"
					};


					
				};
				
--- Physics
ENT.MinClimb = 5 					-- How much we have to pitch down to start gaining speed.
ENT.MaxClimb = -15 					-- Max angle we can go before we start losing speed.
ENT.ClimbPunishmentMultiplier = 60	-- How fast we gain speed. Higher value faster acceleration / deceleration
ENT.BankingFactor = 7 				--unused atm
ENT.ThrottleIncrementSize = 4950 	-- how fast we gain speed 
ENT.ThrottleDecreaseSize = 1500 	-- how fast we drop speed
ENT.RudderMultiplier = 8 			-- how much we turn 
ENT.PitchValue = 8					-- how fast we rise / dive
ENT.AutoRollYawFactor = 30			-- How much we turn when the plane is leaning to either side
ENT.DestroyedDownForce = -5000		-- How much force to apply when the plane is going down after being hit / destroyed
ENT.TailLiftMultiplier = -1115		-- Wing Mass / Mult * Velocity -- lift coefficient 
ENT.WingLiftMultiplier = 105			-- tail lift coefficient
ENT.MaxVelocity = 1.9 * 650			-- Top speed in km/h // Heavy gun :D
ENT.MinVelocity = 0					-- slowest we can go (unused)
ENT.Damping = 4 						-- momentum damping
ENT.AngDamping = 8					-- angular momentum damping
ENT.PropForce = 0					-- How much torque to apply to propeller. Unit/s 
ENT.PropMass = 1					-- Propeller Phys Obj Mass
ENT.BankForce = 590					-- Aileron / banking force Unit/s
ENT.AxledWheels = true              -- Use axis instead of weld?
ENT.WheelMass = 245				-- Wheel weight
-- ENT.AngleCompensation = Vector( 0, 0, -4 )
-- ENT.HasAfterburner = false
-- ENT.HasAirbrakes = false
-- ENT.NA_IsCivilian = false
-- ENT.NoAirbrake = true
-- End of physics

ENT.YawForceDivider = 0.35

-- Mouse Aim Variables.
ENT.MousePichForceMult = 1.2 -- MousePichForceMult * PitchForce, override default max pitch force when using hte mouse.
ENT.MouseBankForceMult = 1.0 -- MouseBankForceMult * BankForce, override default max bank speed if the plane feels sluggish when turning
ENT.MousePitchForce = 70 -- How many times to mulitply the angle difference between plane pitch and mouse pitch
ENT.MouseBankForce = 100 -- How many times to multiply the angle difference between plane Yaw and Mouse Yaw.
ENT.MouseBankTreshold = 2.0 -- How many degrees we can allow the mouse to move before we start banking, set this high if you got a front mounted cannon so you can aim freely a bit.
ENT.MousePitchTreshold = 1.0-- use power of two with MouseBankTreshold to create a mousetrap near the front of the plane. 


-- Weapons
ENT.Muzzle = "AirboatMuzzleFlash"
ENT.PhysicalAmmo = true
ENT.NoSecondaryWeapons = false
ENT.NoLockon = true

ENT.TracerScale1 = 0.05
ENT.TracerScale2 = 0.05
ENT.ImpactScale = 1
ENT.TracerGlowProxy = 1

ENT.PrimaryCooldown = 0.125
ENT._2ndCD = 0.1

ENT.MuzzleOffset = 100
ENT.MinDamage = 35
ENT.MaxDamage = 50
ENT.Radius = 13
ENT.AmmoType = "sent_mini_shell" 
ENT.MinigunTracer = "tracer"
ENT.MachineGunModel = "models/Airboatgun.mdl"
-- ENT.PrimaryShootSound = Sound( "IL-2/gun_17_22.mp3" )
ENT.MinigunSound = "WT/Guns/mk108_loop.wav"
ENT.MinigunPos = { Vector( -5, 4, 2 ),Vector( -5, -4, 2 ), Vector( -6, -1, 3 ),Vector( -6, 1, 3 )  }
ENT.ContigiousFiringLoop = true
ENT.PrimaryShootSound = "WT/Guns/mk108_loop.wav"
ENT.PrimaryStopSound = "WT/Guns/mk108_lastshot.wav"
ENT.PrimaryMaxShots = 40
-- End of weapons

-- Visuals
ENT.CameraDistance = 200
ENT.CameraUp = 0
ENT.TinySmoke = true
ENT.CockpitPosition = Vector( -0, 0,6 )
ENT.TrailPos = { Vector( -14, 214, 35 ), Vector( -14, -214, 35 ) }
ENT.FireTrailPos = { Vector( 2, -22, 32 ), Vector( 76, 17, 2 ) }
-- ENT.PilotModelPos = Vector( -5,9,-7)
ENT.ExhaustPos = { Vector( -12,-18,-5 ), Vector( -12, 18, -5 ) }
ENT.JetExhaust = true
ENT.ExhaustTexture = "sprites/heatwave"
ENT.ParticleSize = .8
ENT.ExhaustDieTime = 1

-- ENT.WheelPos = { Vector( 15, -20, -15 ),Vector( 15, 20, -15 )  }
-- ENT.WheelModels = {"models/cessna/cessna172_nwheel.mdl","models/cessna/cessna172_nwheel.mdl"}
ENT.EngineSounds = { "WT/Engines/jet_engine_rpm66.wav", 
"physics/cardboard/cardboard_box_scrape_smooth_loop1.wav", 
"WT/Engines/jet_engine_rpm66.wav" }
if( SERVER ) then

	AddCSLuaFile(  )
	function ENT:SpawnFunction( ply, tr, class )
		local SpawnPos =  ply:GetPos() + ply:GetUp() * 512
		local ent = ents.Create( class )
		ent:SetPos( SpawnPos )
		ent:SetAngles( ply:GetAngles() )
		ent:Spawn()
		ent:Activate()
		-- constraint.Weld( game.GetWorld(), ent, 0,0,0, true )
		timer.Simple( 0, function() if( IsValid( ply ) && IsValid( ent ) ) then ent:Use( ply,ply,0,0 ) end end )
		if( ply:IsAdmin() && type( ent.AdminArmament ) == "table" ) then
			ent:AddAdminEquipment()
		end
		return ent
	end
	function ENT:Initialize() self:CivAir_DefaultInit() end
	function ENT:UpdateTransmitState()	return TRANSMIT_ALWAYS end
	function ENT:OnTakeDamage(dmginfo) self:CivAir_DefaultDamage(dmginfo) end
	function ENT:OnRemove() self:CivAir_OnRemove() end
	function ENT:PhysicsCollide( data, physobj ) self:Micro_PhysCollide( data, physobj ) end
	function ENT:Use(ply,caller, a, b ) self:CivAir_DefaultUse( ply,caller, a , b ) end
	function ENT:Think() self:JetAir_Think()  end
	function ENT:PrimaryAttack() self:Micro_DefaultPrimaryAttack() end
	function ENT:SecondaryAttack( wep, id )	return end
	function ENT:PhysicsSimulate( phys, deltatime ) self:MicroPhysics( phys, deltatime ) 
	
		if( IsValid( self.Pilot ) && !self.Destroyed && self.CurVelocity ) then
			
			if( self:GetVelocity():Length() > self.MaxVelocity / 4 ) then
			
				self:GetPhysicsObject():AddAngleVelocity( Vector( 0, -1, -3) * 1.0 * ( self.CurVelocity  / self.MaxVelocity ) ) 
				
			end
		
		end
		
	end
	
end

if( CLIENT ) then 

	function ENT:Initialize() self:CivAir_CInit() end
	function ENT:CalcView( ply, Origin, Angles, Fov ) return DefaultPropPlaneCView( ply, Origin, Angles, Fov ) end
	function ENT:Draw() self:CivAir_Draw() end
	
end
