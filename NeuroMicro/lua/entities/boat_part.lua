ENT.Type = "vehicle"
ENT.Base = "base_anim"
ENT.PrintName	= ""
ENT.Author	= "Hoffa"
ENT.Spawnable	= false
ENT.AdminSpawnable = false
ENT.InitialHealth = 12500				
ENT.PhysgunDisabled  = true 
ENT.Model 			= "models/props_junk/garbage_metalcan002a.mdl"

if( SERVER ) then

	AddCSLuaFile(  )
	
	function ENT:Initialize()
	
		self:SetModel( self.Model )	
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )

		self.HealthVal = self.InitialHealth 

		self:GetPhysicsObject():Wake()
		
	end

	function ENT:OnTakeDamage(dmginfo) 
		
		if( self.Destroyed ) then return end 
		
		local dmg = dmginfo:GetDamage()
		self.HealthVal = self.HealthVal - dmg 
		local atk = dmginfo:GetAttacker()
		self:SetNWInt( "health" , math.floor(self.HealthVal) )
	
		if( atk:IsPlayer() && dmg > 25 ) then
		
			atk:SendLua("HitMarker("..math.floor(dmg)..")")
			
		end
		ParticleEffect( "microplane_damage",dmginfo:GetDamagePosition(), Angle(0,0,0), nil )
		
		if( self.HealthVal < .35 ) then 
		
			if( !self.BigFire ) then
				
				self.BigFire = true 
				self:EmitSound("Misc/fire.wav")
				ParticleEffectAttach( "fireplume_small", PATTACH_ABSORIGIN_FOLLOW, self, 0 )
				self:Ignite(120, 120 )
				
				
			end 
		
		end 
		
		if( self.HealthVal <= 0 ) then
			
			self.Destroyed = true 
			
			self:PlayWorldSound("explosion"..math.random(3,5))
			
			ParticleEffect( "he_impact_wall", self:GetPos(), Angle( 0,0,0 ), nil )
			util.BlastDamage( self, self, self:GetPos(), 256, 256 )
			if( !self.IsShipDeck ) then 
			
				self:Remove()
			
			else
				
				if( IsValid( self.Owner ) ) then
					
					local pilot = self.Owner.Pilot 
					if( IsValid( pilot ) ) then
						
						self.Pilot:SendLua("HitMarker([[Your Bridge Is No More !]])")
					
					end 
					
				end 
			end 
			
			return
		
		end 
		
	
	end
	
	
	function ENT:OnRemove() 

		
	end

	
	function ENT:Think() 
		
		if( self.Destroyed ) then 
			
			
		
		end 
	
	end
	
	function ENT:PhysicsUpdate()

	end 
	
end

if( CLIENT ) then 

	function ENT:Initialize() 
	
	end 
	
	function ENT:Draw() 

		self:DrawModel() 
		
	end
	
end
