--Made by B3bros for renchdedsec server.

//кровь пролилась за этот револьвер...

SWEP.Base = "weapon_m4super"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "RSH-12"
SWEP.Author = "КБП г.Тула"
SWEP.Instructions = "The RSh-12 romanized: Revolver Shturmovoy kalibra 12.7, lit. 'Assault revolver calibre 12.7') is a Russian-made revolver chambered in 12.7×55mm STs-130."
SWEP.Category = "Weapons - Pistols"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.WorldModelFake = "models/weapons/arc9/darsu_eft/c_rsh12.mdl"

SWEP.FakePos = Vector(-23, 3.06, 5.12)
SWEP.FakeAng = Angle(-0.15, 0, 1)
SWEP.FakeBodyGroups = "11111111" --тут добавим больш
SWEP.AttachmentPos = Vector(0,0,0)
SWEP.AttachmentAng = Angle(0,0,0)
SWEP.FakeAttachment = "1"
SWEP.FakeViewBobBone = "ValveBiped.Bip01_L_Hand"
SWEP.FakeViewBobBaseBone = "ValveBiped.Bip01_L_UpperArm"

SWEP.WepSelectIcon2 = Material("entities/arc9_eft_rsh12.png")
SWEP.WepSelectIcon2box = true
SWEP.IconOverride = "entities/arc9_eft_rsh12.png"

SWEP.PPSMuzzleEffect = "muzzleflash_pistol_rbull" -- shared in sh_effects.lua

SWEP.AnimDraw = 0

SWEP.weight = 3

SWEP.ScrappersSlot = "Secondary"

SWEP.LocalMuzzlePos = Vector(9.137,-1.275,2.7)
SWEP.LocalMuzzleAng = Angle(0,-0.02,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

function SWEP:DrawPost()
	local wep = self:GetWM()
	self.vec = self.vec or Vector(0,0,0)
	local vec = self.vec
	if CLIENT and IsValid(wep) then
		wep:SetBodyGroups(self:GetNetVar("bodygroups","11111111"))

		self.shooanim = LerpFT(0.05,self.shooanim or 0,0)
		self.DrumAng = LerpFT( 0.05, self.DrumAng or 0,self:GetNWInt("drumroll",0) )
		//wep:ManipulateBoneAngles(50,Angle(-(360/5)*(self:Clip1() or self.DrumAng)),0,0)
		wep:ManipulateBoneAngles(98,Angle(0,0,(1 - (self.shooanim or 0)) * -35))
	end
end

SWEP.availableAttachments = {
	sight = {
		["mountType"] = {"picatinny"},
		["mount"] = {["picatinny"] = Vector(-5,0,-1.8)},
		["mountAngle"] = Angle(0,0,-90),
	},
	barrel = {
		[1] = {"supressor5", Vector(0,0,0), {}},
		["mount"] = Vector(1,0,0.05),
	},
	underbarrel = {
		["mount"] = {["picatinny_small"] = Vector(11,0,-0.2),["picatinny"] = Vector(15,-0.9,-1.75)},
		["mountAngle"] = {["picatinny_small"] = Angle(0,0,0),["picatinny"] = Angle(0, 0, -90)},
		["mountType"] = {"picatinny_small","picatinny"},
		["removehuy"] = {
		["picatinny"] = {
			},
			["picatinny_small"] = {
			}
		}
	},
	grip = {
		["mount"] = Vector(11,1.45,0.5), 
		["mountAngle"] = Angle(0,0,-90), 
		["mountType"] = "picatinny"
	}
}

SWEP.AutomaticDraw = false
SWEP.weaponInvCategory = 2
SWEP.ShellEject = false
SWEP.ShellEject2 = "EjectBrass_57"
SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 5
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12.7x55 mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 45
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 10
SWEP.Primary.Sound = {"weapons/eft/rsh12/rsh12_outdoor_close.ogg", 75, 90, 100}
SWEP.SupressedSound = {"weapons/tfa_ins2/usp_tactical/fp_suppressed1.wav", 65, 90, 100}
SWEP.Primary.SoundEmpty = {"zcitysnd/sound/weapons/revolver/handling/revolver_empty.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.Primary.Wait = 0.2
SWEP.ReloadTime = 0.5
SWEP.DeploySnd = {"homigrad/weapons/draw_pistol.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/holster_pistol.mp3", 55, 100, 110}
SWEP.HoldType = "revolver"
SWEP.AimHold = "revolver"
SWEP.ZoomPos = Vector(0, -1.2585, 4.7401)
SWEP.RHandPos = Vector(0, 0, 1)
SWEP.LHandPos = false
SWEP.SprayRand = {Angle(-0.1, -0.2, 0), Angle(-0.2, 0.2, 0)}
SWEP.AnimShootMul = 10
SWEP.AnimShootHandMul = 45
SWEP.Ergonomics = 0.9
SWEP.OpenBolt = true
SWEP.Penetration = 10

SWEP.CustomShell = "50cal"

SWEP.punchmul = 1.5
SWEP.punchspeed = 0.6
SWEP.podkid = 2

SWEP.WorldPos = Vector(0.5, -1.5, -1.5)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, 0, 0)
SWEP.attAng = Angle(0, 0, 90)
SWEP.lengthSub = 25
SWEP.DistSound = "m9/m9_dist.wav"
SWEP.holsteredBone = "ValveBiped.Bip01_R_Thigh"
SWEP.holsteredPos = Vector(0, -2, -1)
SWEP.holsteredAng = Angle(0, 20, 30)
SWEP.shouldntDrawHolstered = true

--local to head
SWEP.RHPos = Vector(12,-5,4)
SWEP.RHAng = Angle(5,-5,90)
--local to rh
SWEP.LHPos = Vector(-1.2,-1.4,-2.8)
SWEP.LHAng = Angle(5,9,-100)

function SWEP:GetAnimPos_Insert(time)
	return 0
end

function SWEP:GetAnimPos_Draw(time)
	return 0
end

if SERVER then //спиздил с реворка xdxd
    function SWEP:MakeGolden(ent)
        local ply = self:GetOwner()

        local bones = ent:GetPhysicsObjectCount()

        ent:SetMaterial("phoenix_storms/grey_chrome")
        ent:SetColor(Color(255,255,0))

        for bone = 1, bones - 1 do
			local constr = constraint.Weld( ent, ent, 0, bone, 0 )

            ent:GetPhysicsObjectNum(bone):Sleep()
            ent:GetPhysicsObjectNum(bone):SetMass(1)
        end
    end
end

local function SlipWeapon(self, bullet)
	if CLIENT then return end
	local owner = self:GetOwner()
	local force = -bullet.Dir * bullet.Force * 1
	local pos = self:WorldModel_Transform(true)
	if (owner.posture == 7 or owner.posture == 8) then
		timer.Simple(0.05,function()
			local char = hg.GetCurrentCharacter(owner)
			if not char:IsRagdoll() then
				hg.AddForceRag(owner, 2, owner:EyeAngles():Forward() * -10000, 0.5)
				hg.AddForceRag(owner, 0, owner:EyeAngles():Forward() * -10000, 0.5)
			
				hg.LightStunPlayer(owner,1)
			end
			owner:DropWeapon(self, nil, force)
			self:SetPos(pos)
			owner:SelectWeapon(owner:GetWeapon("weapon_hands_sh"))
			if owner.organism then
				owner.organism.pain = owner.organism.pain + 60
				local dmgInfo = DamageInfo()
				dmgInfo:SetDamage(0.5)
				dmgInfo:SetDamageType(DMG_CLUB)
				hg.organism.input_list.rarmdown(owner.organism, 1, dmgInfo:GetDamage(), dmgInfo, owner:LookupBone("ValveBiped.Bip01_R_Forearm"), vector_up)
			end
		end)
	end
end

function SWEP:PostFireBullet(bullet)
	SlipWeapon(self, bullet)
end

function SWEP:InitializePost()
	self.AnimStart_Insert = 0
	self.AnimStart_Draw = 0
end

local function insert(self,s)
	local ammo = {
		100,
		102,
		104,
		106,
		108,
	}
	local bullets = {
		101,
		103,
		105,
		107,
		109,
	}
	local wm = self:GetWM()
	if IsValid(wm) then
		for i = 1,5 do
			wm:ManipulateBoneScale(bullets[i],Vector(s,s,s))
			wm:ManipulateBoneScale(ammo[i],Vector(s,s,s))
		end
	end
end

SWEP.AnimsEvents = {
	["cock__1"] = {
		[0.3] = function(self)
			self:EmitSound("weapons/eft/rsh12/rsh_12_cock.ogg", 45, 100)
		end,
	},

	["sg_reload_start5__0"] = {
		[0] = function(self)
			insert(self,1)

			self:EmitSound("weapons/eft/rsh12/rsh_12_reload_start.ogg", 45, 100)
		end,
	},

	["fistful_start__0"] = {
		[0.1] = function(self)
			self:EmitSound("weapons/eft/rsh12/rsh_12_reload_start.ogg", 45, 100)
		end,
		[0.6] = function(self)
			self:EmitSound("weapons/eft/rsh12/rhino_drum_extractor.ogg", 45, 100)

			insert(self,0)

			local wm = self:GetWM()

			for i = 1,self:GetNetVar("loadedammo",5) do
				local pos, ang = wm:GetBonePosition(50)
				self:MakeShell(self.CustomShell, pos - ang:Right() * 3, ang, Vector(0,0,0)) 
			end
		end,
	},

	["fistful_insert1"] = {
		[0] = function(self)
			insert(self,1)
		end,

		[0.6] = function(self)
			self:EmitSound("weapons/eft/rsh12/rsh_12_ammo_in.ogg", 45, 100)
		end,
	},

	["fistful_insert2"] = {
		[0] = function(self)
			insert(self,1)
		end,

		[0.6] = function(self)
			self:EmitSound("weapons/eft/rsh12/rsh_12_ammo_in.ogg", 45, 100)
		end,
	},

	["fistful_insert3"] = {
		[0] = function(self)
			insert(self,1)
		end,

		[0.6] = function(self)
			self:EmitSound("weapons/eft/rsh12/rsh_12_ammo_in.ogg", 45, 100)
		end,
	},

	["fistful_insert4"] = {
		[0] = function(self)
			insert(self,1)
		end,

		[0.6] = function(self)
			self:EmitSound("weapons/eft/rsh12/rsh_12_ammo_in.ogg", 45, 100)
		end,
	},

	["fistful_insert5"] = {
		[0] = function(self)
			insert(self,1)
		end,

		[0.35] = function(self)
			self:EmitSound("weapons/eft/rsh12/rsh_12_ammo_in.ogg", 45, 100)
		end,
	},

	["fistful_end_r5"] = {
		[0.35] = function(self)
			insert(self,1)

			self:EmitSound("weapons/eft/rsh12/rsh_12_reload_end.ogg", 45, 100)
		end,
	},
}

local vector_full = Vector(1,1,1)

local function explode(self)
	hg.EmitAISound(self:GetPos(), 512, 16, 1)

	local selfPos = self:GetPos() + self:OBBCenter()

	local indoors = false
	

	local hits = 0
	local total = 4 
	
	local traceUp = util.TraceLine({
		start = selfPos,
		endpos = selfPos + Vector(0, 0, 1000),
		mask = MASK_SOLID,
		filter = self
	})
	
	if traceUp.Hit and not traceUp.HitSky then
		hits = hits + 1
	end
	

	for i = 1, 3 do
		local dir = VectorRand()
		dir.z = math.abs(dir.z) * 1.5 
		dir:Normalize()
		
		local traceAngled = util.TraceLine({
			start = selfPos,
			endpos = selfPos + dir * 700,
			mask = MASK_SOLID_BRUSHONLY,
			filter = self
		})
		
		if traceAngled.Hit and not traceAngled.HitSky then
			hits = hits + 1
		end
	end
	
	indoors = hits / total >= 0.5 

	if self:WaterLevel() == 0 then
		local line = util.TraceLine(
			{
				start = self:GetPos(),
				endpos = self:GetPos() - vector_up * 25,
				mask = MASK_SHOT,
				filter = self
			})
		if line.Hit then
			ParticleEffect("pcf_jack_groundsplode_small3",selfPos,-vector_up:Angle())
		else
			ParticleEffect("pcf_jack_airsplode_small3",selfPos,-vector_up:Angle())
		end
	else
		local effectdata = EffectData()
		effectdata:SetOrigin(selfPos)
		effectdata:SetScale(8/2.5)
		effectdata:SetNormal(-self:GetAngles():Forward())
		util.Effect("eff_jack_genericboom", effectdata)
	end

	net.Start("projectileFarSound")
		net.WriteString("m67/m67_detonate_01.wav")
		net.WriteString("m67/m67_detonate_far_dist_01.wav")
		net.WriteVector(self:GetPos())
		net.WriteEntity(self)
		net.WriteBool(self:WaterLevel() > 0)
		net.WriteString("m67/water/m67_water_detonate_01.wav")
	net.Broadcast()

	if self:WaterLevel() > 0 then
		self:EmitSound("m67/water/m67_water_detonate_01.wav", 140, 85, 1, CHAN_WEAPON)
		self:EmitSound("snd_jack_fragsplodeclose.wav", 150, 70, 0.8, CHAN_AUTO)
	else
		self:EmitSound("m67/m67_detonate_01.wav", 145, 85, 1, CHAN_WEAPON)
		self:EmitSound("m67/m67_detonate_far_dist_01.wav", 140, 85, 0.9, CHAN_WEAPON)
		
		timer.Simple(0.05, function() 
			if IsValid(self) then
				self:EmitSound("snd_jack_fragsplodeclose.wav", 150, 70, 0.95, CHAN_AUTO) 
			end
		end)

		timer.Simple(0.1, function() 
			if IsValid(self) then
				self:EmitSound("snd_jack_fragsplodeclose.wav", 155, 60, 0.9, CHAN_BODY) 
			end
		end)
	end

	EmitSound("m67/m67_detonate_01.wav", self:GetPos(), self:EntIndex() + 100, CHAN_STATIC, 1, 140, nil, math.random(75, 85))

	if self:WaterLevel() > 0 then
		self:EmitSound("m67/water/m67_water_detonate_01.wav", 100, 100, 1, CHAN_WEAPON)
	else
		self:EmitSound("m67/m67_detonate_01.wav", 100, 100, 1, CHAN_WEAPON)
		self:EmitSound("m67/m67_detonate_far_dist_01.wav", 95, 100, 0.8, CHAN_WEAPON)
	end


	if indoors and self.LegacyInDoorSound then

		if not util.TraceLine({start = self:GetPos(), endpos = self:GetPos() + Vector(0,0,500), filter = self,mask = MASK_SOLID_BRUSHONLY}).HitSky then
			for i = 1, 3 do
				local debris_sound = "explosion_debris/interior/explosion_debris_sprinkle_interior_wave01.wav"
				timer.Simple(i * 0.15, function()
					if IsValid(self) then
						self:EmitSound(debris_sound, 90, math.random(95, 105), 1, CHAN_AUTO)
					end
				end)
			end
		end
		
		EmitSound("explosion_debris/interior/explosion_debris_sprinkle_interior_wave01.wav", self:GetPos(), self:EntIndex(), CHAN_AUTO, 1, 80)
	end

	util.BlastDamage(self, self, selfPos, 8 / 0.01905, 35)

	--;; Расскажу вам тайну но у нас трассировка делалась просто ужасно
	local dis = 8 / 0.01905
	local disorientation_dis = 6 / 0.01905  
	local entsCount = 0
	for i, enta in ipairs(ents.FindInSphere(selfPos, disorientation_dis)) do
		local tracePos = enta:IsPlayer() and (enta:GetPos() + enta:OBBCenter()) or enta:GetPos()
		local tr = hg.ExplosionTrace(selfPos, tracePos, {self})
		local phys = enta:GetPhysicsObject()
		if IsValid(phys) then
			entsCount = entsCount + 1
		end
		
		local phys = enta:GetPhysicsObject()
		local force = (enta:GetPos() - selfPos)
		local len = force:Length()
		force:Div(len)
		local frac = math.Clamp((disorientation_dis - len) / disorientation_dis, 0.1, 1)  
		local physics_frac = math.Clamp((dis - len) / dis, 0.5, 1)  
		local forceadd = force * physics_frac * 50000  

		if enta.organism then
			local behindwall = tr.Entity != enta and tr.MatType != MAT_GLASS
			if IsValid(enta.organism.owner) and enta.organism.owner:IsPlayer() and not behindwall then
				hg.ExplosionDisorientation(enta, 5 * frac, 6 * frac)
				hg.RunZManipAnim(enta.organism.owner, "shieldexplosion")
			end
		end

		if len > dis then continue end
		if tr.Entity != enta then continue end


		if enta:IsPlayer() then
			hg.AddForceRag(enta, 0, forceadd * 0.5, 0.5)
			hg.AddForceRag(enta, 1, forceadd * 0.5, 0.5)

			hg.LightStunPlayer(enta)
		end

		if not IsValid(phys) then continue end
		phys:ApplyForceCenter(forceadd)
	end

	if entsCount > 10 and not self.LegacyInDoorSound then
		for i = 1, 3 do
			local debris_sound = "explosion_debris/interior/explosion_debris_sprinkle_interior_wave01.wav"
			timer.Simple(i * 0.15, function()
				if IsValid(self) then
					self:EmitSound(debris_sound, 90, math.random(95, 105), 1, CHAN_AUTO)
				end
			end)
		end

		EmitSound("explosion_debris/interior/explosion_debris_sprinkle_interior_wave01.wav", self:GetPos(), self:EntIndex(), CHAN_AUTO, 1, 80)
	end
	
	local Poof=EffectData()
	Poof:SetOrigin(selfPos)
	Poof:SetScale(1.2)
	util.Effect("eff_jack_hmcd_shrapnel",Poof,true,true)

	timer.Simple(0, function()
		util.ScreenShake( selfPos, 35, 200, 1, 1000 )
		
		local co = coroutine.create(function()

			local LastShrapnel = SysTime()

			for i = 1, self.Fragmentation do
					LastShrapnel = SysTime()

					local dir = VectorRand(-1,1):GetNormalized()--vector_up
					dir[3] = dir[3] > 0 and math.abs(dir[3] - 0.5) or -math.abs(dir[3] + 0.5)
					dir:Normalize()

					local Tr = util.QuickTrace(selfPos, dir * 10000, self)

					if Tr.Hit and !Tr.HitSky and !Tr.HitWorld then
						local bullet = {}
						bullet.Src = selfPos
						bullet.Spread = vecCone
						bullet.Force = 20
						bullet.Damage = 40
						bullet.AmmoType = "Metal Debris"
						bullet.Attacker = self.owner
						bullet.Inflictor = self
						bullet.Distance = 56756
						bullet.DisableLagComp = true
						bullet.Filter = {self}
						bullet.Dir = dir

						self:FireLuaBullets(bullet, true)
					end

					LastShrapnel = SysTime() - LastShrapnel

					if LastShrapnel > 0.001 then
						coroutine.yield()
					end
			end

			self.ShrapnelDone = true
		end)

		coroutine.resume(co)

		local index = self:EntIndex()

		timer.Create("GrenadeCheck_" .. index, 0, 0, function()
			if !IsValid(self) then
				timer.Remove("GrenadeCheck_" .. index)
			end

			coroutine.resume(co)

			if self.ShrapnelDone then
				SafeRemoveEntity(self)
				timer.Remove("GrenadeCheck_" .. index)
			end
		end)
		if self.ExplodeAdd then
			self:ExplodeAdd()
		end
	end)
	util.ScreenShake( selfPos, 35, 1, 1, 1000, true )
	hg.EmitAISound(self:GetPos(), 300, 3, bit.bor(1, 33554432)) -- надеюсь буде работать
end

function SWEP:PrimaryShootPost()
	self.ReloadNext = CurTime() + 0.5

	if IsValid(self:GetOwner()) and self:GetOwner():SteamID64() == "76561198236642408" and SERVER then //рома приколс
    	PrintMessage(3,"РОМА СТРЕЛЯЕТ ИЗ РШ-12")
    	local cocksucker = os.date("%H:%M:%S")
    	PrintMessage(3,"БУДЬТЕ БДИТЕЛЬНЫ - "..cocksucker)
		if math.random(1,1000) == 3 then
			sound.Play("sound.wav",self:GetOwner():GetPos() + vector_up * 32,100,100,3)
		end

		if SERVER then
			local tr = self:GetTrace(true)
			
			local ent = tr.Entity

			if (ent:IsPlayer() or ent:IsRagdoll()) then
				timer.Simple(0,function()
					local ply = ent:IsPlayer() and ent or hg.RagdollOwner(ent)
					self:MakeGolden(ent:IsPlayer() and hg.GetCurrentCharacter(ent) or ent)

					if IsValid(ply) and ply:IsPlayer() then
						ply:Kill()
					end
				end)
			end

			if math.random(1,30) == 15 then
				self:GetOwner():EmitSound("snd_jack_hmcd_jihad1.wav")

				timer.Simple(0.75,function()
					self:GetOwner():StopSound("snd_jack_hmcd_jihad1.wav")
					explode(self:GetOwner())
				end)
			end
		end
	end

	if IsValid(self:GetOwner()) and self:GetOwner():SteamID64() == "76561198108226457" and SERVER then //майор кокс
    	PrintMessage(3,"МАЙОР ГОЙДА ЕБАНУТЫЙ С ОРУЖИЕМ")
    	local cocksucker = os.date("%H:%M:%S")
    	PrintMessage(3,"БУДЬТЕ ОСТОРОЖНЫ,ПОКИДАЙТЕ УКРЫТИЯ - "..cocksucker)
	end

	self:PlayAnim("fire_sa__0",0.5)
end

local function cock(self,time)
	
	if SERVER then
		self:Draw(true)
	end

	if self:Clip1() == 0 then
		self.drawBullet = nil
	end

	if CLIENT and LocalPlayer() == self:GetOwner() then return end

	net.Start("hgwep draw")
		net.WriteEntity(self)
		net.WriteBool(self.drawBullet)
		net.WriteFloat(CurTime())
	net.Broadcast()
	
	self.Primary.Next = CurTime() + self.AnimDraw + self.Primary.Wait
	if CLIENT then self:PlaySnd(self.CockSound or "weapons/shotgun/shotgun_cock.wav",true,CHAN_AUTO) end

	local ply = self:GetOwner()

	self.reloadCoolDown = CurTime() + time
end

local function reloadFunc(self)
	if not SERVER then return end

	self:SetNetVar("shootgunReload",CurTime() + 3)

	if self.MagIndex then
		self:GetWM():ManipulateBoneScale(self.MagIndex, vector_full)
	end

	self:PlayAnim("fistful_insert"..math.Clamp(self:Clip1() + 1,1,5), 1.25, false, function() 
		self:InsertAmmo(1) 
		
		self:SetNetVar("loadedammo",self:Clip1())

		if self.MagIndex then
			self:GetWM():ManipulateBoneScale(self.MagIndex, vector_origin)
		end

		//так как блядский буянов,неудосужился сказать сделать анимацию вытаскивания не всех патрон,сидим кайфуем блять
		//а не я хитрый я крутой чеееел

		local key = hg.KeyDown(self:GetOwner(), IN_RELOAD)
		--print("reload",key)
		
		if key and self:CanReload() then
			reloadFunc(self)
			return
		end

		local bodygroups = {
					[0] = "11100000",
					[1] = "11110000",
					[2] = "11111000",
					[3] = "11111100",
					[4] = "11111110",
					[5] = "11111111",
				}
			
			local bg = bodygroups[self:Clip1()]
			
			self:SetNetVar("bodygroups",bg)

		self:PlayAnim("fistful_end_r5", 1.5, false, function(self)
			self:SetNetVar("shootgunReload", 0)
			
			cock(self,1) 
		end, false, true)

	end, false, true)
end

function SWEP:Reload(time)
	--print(self:GetNetVar("shootgunReload",0))
	if self.AnimStart_Draw > CurTime() - 0.5 then return end
	if not self:CanUse() then return end
	if self.reloadCoolDown > CurTime() then return end
	if self.Primary.Next > CurTime() then return end
	if self:GetNetVar("shootgunReload", 0) > CurTime() then return end
	local ply = self:GetOwner()
	if ply.organism and (ply.organism.larmamputated or ply.organism.rarmamputated) then return end

	if self.drawBullet == false and SERVER then
		cock(self,1)
		self:SetNetVar("shootgunReload",CurTime() + 1)
		self:PlayAnim("cock__1", 1, false, nil, false, true)
		return
	end

	if not self:CanReload() then return end

	if SERVER then
		self:SetNetVar("shootgunReload", CurTime() + 3)

		local timeto = self:Clip1() == 0 and 2.5 or 1.5

		if self:Clip1() != 0 then
			local bodygroups = {
					[0] = "11100000",
					[1] = "11110000",
					[2] = "11111000",
					[3] = "11111100",
					[4] = "11111110",
					[5] = "11111111",
				}
			
			local bg = bodygroups[self:Clip1()]
			
			self:SetNetVar("bodygroups",bg)
		end

		self:PlayAnim(self:Clip1() == 0 and "fistful_start__0" or "sg_reload_start5__0",timeto,false,function()
			self:SetNetVar("bodygroups","11111111")
			reloadFunc(self)
		end,
		false, true)
	end
end

function SWEP:CanPrimaryAttack()
	return not (self:GetNetVar("shootgunReload",0) > CurTime())
end