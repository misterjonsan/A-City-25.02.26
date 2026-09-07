SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "APS"
SWEP.Author = "Igor Stechkin"
SWEP.Instructions = "The Stechkin APS (Avtomaticheskiy Pistolet Stechkina) is a Soviet selective-fire machine pistol developed in the early 1950s."
SWEP.Category = "Weapons - Pistols"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
--SWEP.WorldModel="models/pwb/weapons/w_glock17.mdl" 
SWEP.WorldModel = "models/weapons/tfa_ins2/w_glock_p80.mdl"
SWEP.WorldModelFake = "models/weapons/arc9/darsu_eft/c_aps.mdl" // МОДЕЛЬКИ ЧУТЬ ПОПОЗЖЕ ЗАЛЬЮ
--SWEP.WorldModelFake = "models/weapons/csgo/c_snip_g3sg1.mdl" // МОДЕЛЬКИ ЧУТЬ ПОПОЗЖЕ ЗАЛЬЮ
//SWEP.FakeScale = 1.5
SWEP.FakePos = Vector(-18, 5, 4.32)
SWEP.FakeAng = Angle(0, 0, 0)
SWEP.AttachmentPos = Vector(0.500,-1.1,-6.5)
SWEP.AttachmentAng = Angle(0,0,0)
SWEP.FakeAttachment = "1"
SWEP.FakeBodyGroups = "10111101"
--SWEP.MagIndex = 46
SWEP.FakeEjectBrassATT = "2"
SWEP.FakeVPShouldUseHand = true

SWEP.CantFireFromCollision = true // 2 спусковых крючка все дела

-- [[ ANIMATION LIST ]] --
SWEP.AnimList = {
	["idle"] = "idle",
	["fire"] = "fire",
	["deploy"] = "draw",
	["reload"] = "reload",
	["reload_empty"] = "reload_empty0",
}
SWEP.FakeViewBobBone = "ValveBiped.Bip01_R_Hand"
SWEP.FakeViewBobBaseBone = "ValveBiped.Bip01_R_UpperArm"
SWEP.ViewPunchDiv = 40

SWEP.FakeReloadSounds = {
	[0.25] = "weapons/eft/aps/aps_mag_out.ogg",
	[0.95] = "weapons/eft/aps/aps_mag_in.ogg",
}

SWEP.FakeEmptyReloadSounds = {
	[0.10] = "weapons/darsu_eft/57/fiveseven_mag_releasebutton.ogg",
	[0.20] = "weapons/eft/aps/aps_mag_out.ogg",
	[0.90] = "weapons/eft/aps/aps_slider_in.ogg",
	[0.75] = "weapons/eft/aps/aps_mag_in.ogg",
}


SWEP.lmagpos = Vector(1.8,0,-0.3)
SWEP.lmagang = Angle(-10,0,0)
SWEP.lmagpos2 = Vector(0,3.5,0.3)
SWEP.lmagang2 = Angle(0,0,-110)

SWEP.GunCamPos = Vector(2.2,-17,-3)
SWEP.GunCamAng = Angle(180,0,-90)

SWEP.MagModel = "models/weapons/arc9/darsu_eft/mods/57mag.mdl"

if CLIENT then
	local vector_full = Vector(1, 1, 1)
	SWEP.FakeReloadEvents = {
		[0.15] = function( self, timeMul )
			if self:Clip1() < 1 then
				self:GetOwner():PullLHTowards("ValveBiped.Bip01_L_Thigh", 1.5 * timeMul)
			else
				self:GetWM():ManipulateBoneScale(46, vector_full)
				self:GetWM():ManipulateBoneScale(47, vector_origin)
				self:GetWM():ManipulateBoneScale(49, vector_origin)
				self:GetOwner():PullLHTowards("ValveBiped.Bip01_L_Thigh", 0.5 * timeMul)
			end
		end,
		[0.3] = function( self )
			if self:Clip1() < 1 then
				hg.CreateMag( self, Vector(0,55,-55) )
				self:GetWM():ManipulateBoneScale(47, vector_origin)
				self:GetWM():ManipulateBoneScale(49, vector_origin)
			else
				self:GetWM():ManipulateBoneScale(47, vector_full)
				self:GetWM():ManipulateBoneScale(49, vector_full)
			end
		end,
		[0.45] = function( self )
			if self:Clip1() < 1 then
				self:GetWM():ManipulateBoneScale(47, vector_full)
				self:GetWM():ManipulateBoneScale(49, vector_full)
			end
		end,
		[0.9] = function( self, timeMul )
			if self:Clip1() >= 1 then//fucking idiot doesnt know how > and < work
				self:GetWM():ManipulateBoneScale(46, vector_origin)
				self:GetOwner():PullLHTowards("ValveBiped.Bip01_L_Thigh", 0.5 * timeMul)
			end
		end
	}
end

SWEP.FakeMagDropBone = "glock_mag"

SWEP.WepSelectIcon2 = Material("entities/arc9_eft_aps.png")
SWEP.WepSelectIcon2box = true
SWEP.IconOverride = "entities/arc9_eft_aps.png"

SWEP.CustomShell = "9x19"
SWEP.EjectPos = Vector(3,2,-20)
SWEP.EjectAng = Angle(-45,-80,0)

SWEP.weight = 1

SWEP.ScrappersSlot = "Secondary"

SWEP.weaponInvCategory = 2
SWEP.ShellEject = "5.7x28"
SWEP.Primary.ClipSize = 17
SWEP.Primary.DefaultClip = 17
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "9x19 mm Parabellum"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 27
SWEP.Primary.Sound = {"weapons/eft/tt33/tt_fire_indoor_close.wav", 75, 100, 110}
SWEP.DistSound = "weapons/eft/tt33/tt_fire_outdoor_distant.wav"
SWEP.SupressedSound = {"weapons/eft/1911/1911_fire_silenced_indoor_close.wav", 65, 90, 100}
SWEP.Primary.SoundEmpty = {"weapons/darsu_eft/generic_pistol/pm_trigger_hammer.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.Primary.Force = 25
SWEP.Primary.Wait = PISTOLS_WAIT
SWEP.ReloadTime = 3.500
SWEP.ReloadSoundes = {
	"none",
	"none",
	"pwb/weapons/fnp45/clipout.wav",
	"none",
	"none",
	"none",
	"pwb/weapons/fnp45/clipin.wav",
	"pwb/weapons/fnp45/sliderelease.wav",
	"none",
	"none",
	"none",
	"none"
}
SWEP.DeploySnd = {"homigrad/weapons/draw_pistol.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/holster_pistol.mp3", 55, 100, 110}
SWEP.HoldType = "revolver"
SWEP.ZoomPos = Vector(-26, 0.700, 2.700)
--SWEP.RHandPos = Vector(-13.5,0,4)
SWEP.RHandPos = Vector(-4, 0, -3)
SWEP.LHandPos = false
SWEP.SprayRand = {Angle(-0.03, -0.03, 0), Angle(-0.05, 0.03, 0)}
SWEP.Ergonomics = 1.2
SWEP.Penetration = 7

SWEP.punchmul = 1.5
SWEP.punchspeed = 3
--SWEP.WorldPos = Vector(13,0,3.5)
--SWEP.WorldAng = Angle(0,0,0)
SWEP.WorldPos = Vector(-1, -0, -2.2)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(-0.400, -0, 6.5)
SWEP.attAng = Angle(0, -0.2, 0)
SWEP.lengthSub = 25
SWEP.holsteredBone = "ValveBiped.Bip01_R_Thigh"
SWEP.holsteredPos = Vector(0, -2, 1)
SWEP.holsteredAng = Angle(0, 20, 30)
SWEP.shouldntDrawHolstered = true
SWEP.availableAttachments = {
	barrel = {
		[1] = {"supressor4", Vector(0,0,0), {}},
		[2] = {"supressor6", Vector(4.2,0,0), {}},
		["mount"] = Vector(-0.5,1.5,0),
	},
	underbarrel = {
		["mount"] = Vector(12, -0.050 ,-1),
		["mountAngle"] = Angle(0, -0.6, 90),
		["mountType"] = "picatinny_small"
	}
}

--local to head
SWEP.RHPos = Vector(12,-4.5,3)
SWEP.RHAng = Angle(0,-5,90)
--local to rh
SWEP.LHPos = Vector(-1.2,-1.4,-2.8)
SWEP.LHAng = Angle(5,9,-100)

SWEP.ShootAnimMul = 3
SWEP.SightSlideOffset = 1.2

function SWEP:DrawPost()
	local wep = self:GetWeaponEntity()
	if CLIENT and IsValid(wep) then
		self.shooanim = LerpFT(0.4,self.shooanim or 0,(self:Clip1() > 0 or self.reload) and 0 or 2.2)
		wep:ManipulateBonePosition(114,Vector(0 ,0.8*self.shooanim ,0 ),false)
	end
end

local finger1 = Angle(-25,10,25)
local finger2 = Angle(0,25,0)
local finger3 = Angle(31,1,-25)
local finger4 = Angle(-10,-5,-5)
local finger5 = Angle(0,-65,-15)
local finger6 = Angle(15,-5,-15)

function SWEP:AnimHoldPost()
	--self:BoneSet("r_finger0", vector_zero, finger6)
	--self:BoneSet("l_finger0", vector_zero, finger1)
    --self:BoneSet("l_finger02", vector_zero, finger2)
	--self:BoneSet("l_finger1", vector_zero, finger3)
	--self:BoneSet("r_finger1", vector_zero, finger4)
	--self:BoneSet("r_finger11", vector_zero, finger5)
end


SWEP.MagOffsetVec = Vector(3.226730, -2.238220, 0.462410)
SWEP.MagOffsetAng = Angle(-24.571, 175.233, 101.020)

SWEP.LocalMuzzlePos = Vector(6.5,0,-0.023)
SWEP.LocalMuzzleAng = Angle(0.2,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

function SWEP:AnimHands()
	do return end--bullshit

	local wep = self:GetWeaponEntity()
	local ply = self:GetOwner()
	local lh = ply:GetBoneMatrix(ply:LookupBone("ValveBiped.Bip01_L_Hand"))
	local bon = wep:GetBoneMatrix(7)
	if bon then
		local pos,ang = LocalToWorld(self.MagOffsetVec,self.MagOffsetAng,lh:GetTranslation(),lh:GetAngles())
		if self.reload then
			bon:SetTranslation(pos)
			bon:SetAngles(ang)
		end
		wep:SetBoneMatrix(7,bon)
	end
	--print(WorldToLocal(bon:GetTranslation(),bon:GetAngles(),lh:GetTranslation(),lh:GetAngles()))
end



--RELOAD ANIMS PISTOL

SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(-3,-1,-5),
	Vector(-12,1,-22),
	Vector(-12,1,-22),
	Vector(-12,1,-22),
	Vector(-12,1,-22),
	Vector(-2,-1,-3),
	"fastreload",
	Vector(0,0,0),
	"reloadend",
	"reloadend",
}
SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(30,-10,0),
	Angle(60,-20,0),
	Angle(70,-40,0),
	Angle(90,-30,0),
	Angle(40,-20,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
}

SWEP.ReloadAnimRH = {
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(-2,0,0),
	Vector(-1,0,0),
	Vector(0,0,0)
}
SWEP.ReloadAnimRHAng = {
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(15,2,20),
	Angle(15,2,20),
	Angle(0,0,0)
}
SWEP.ReloadAnimWepAng = {
	Angle(0,0,0),
	Angle(5,15,15),
	Angle(-5,21,14),
	Angle(-5,21,14),
	Angle(5,20,13),
	Angle(5,22,13),
	Angle(1,22,13),
	Angle(1,21,13),
	Angle(2,22,12),
	Angle(-5,21,16),
	Angle(-5,22,14),
	Angle(-4,23,13),
	Angle(7,22,8),
	Angle(7,12,3),
	Angle(2,6,1),
	Angle(0,0,0)
}

SWEP.InspectAnimLH = {
	Vector(0,0,0)
}
SWEP.InspectAnimLHAng = {
	Angle(0,0,0)
}
SWEP.InspectAnimRH = {
	Vector(0,0,0)
}
SWEP.InspectAnimRHAng = {
	Angle(0,0,0)
}
SWEP.InspectAnimWepAng = {
	Angle(0,0,0),
	Angle(6,0,5),
	Angle(15,0,14),
	Angle(16,0,16),
	Angle(4,0,12),
	Angle(-6,0,-2),
	Angle(-15,7,-15),
	Angle(-16,18,-35),
	Angle(-17,17,-42),
	Angle(-18,16,-44),
	Angle(-14,10,-46),
	Angle(-2,2,-4),
	Angle(0,0,0)
}