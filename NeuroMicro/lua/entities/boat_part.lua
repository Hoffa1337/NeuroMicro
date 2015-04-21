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
		
		if( dmg > 350 ) then
		
			local tr,trace = {},{}
			tr.start = dmginfo:GetDamagePosition()
			tr.endpos = self:GetPos()
			tr.filter = {}
			tr.mask = MASK_SOLID
			trace = util.TraceLine( tr )
			
			local a,b = trace.HitPos + trace.HitNormal, trace.HitPos - trace.HitNormal
			util.Decal("Scorch", a, b )
	
			local normdist = -2 
	
			if( trace.Hit && IsValid( trace.Entity ) && trace.Entity == self  && self.HealthVal < .85 * self.InitialHealth ) then
				
				if( self.DamagedPoints == nil ) then self.DamagedPoints = {} end
				
				if( self.DamagePoints == {} ) then
				
					self.DamagedPoints[1] = self:WorldToLocal( trace.HitPos + trace.HitNormal * normdist )
				
				else
				
					self.DamagedPoints[#self.DamagedPoints+1] = self:WorldToLocal( trace.HitPos + trace.HitNormal * normdist )
					
				end
				
			end
		
		
		end

		
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
	
		if( self:WaterLevel() < 3 ) then
		
			if( self.DamagedPoints && #self.DamagedPoints > 0 ) then
				
				for i=1,#self.DamagedPoints do
				
					local effectdata = EffectData()
					effectdata:SetOrigin( self:LocalToWorld( self.DamagedPoints[i] ) )
					if( self.IsMicroCruiser ) then 
						
						effectdata:SetScale( .5 )
						
					end
					
					self.HealthVal = self.HealthVal - math.random(1,4) 
					
					util.Effect( "immolate", effectdata )

				end
			
			end
			
		end
		
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
