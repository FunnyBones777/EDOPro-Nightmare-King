-- Ghoulden Tech Life-Giving X
-- Coded by FunnyBones777
-- Artwork by @Karbonated on Twitter
local s,id=GetID()
function s.initial_effect(c)
	--pendulum summon
	Pendulum.AddProcedure(c)
	--Activate
  local e1=Effect.CreateEffect(c)
  e1:SetType(EFFECT_TYPE_ACTIVATE)
  e1:SetCode(EVENT_FREE_CHAIN)
  e1:SetRange(LOCATION_PZONE)
  c:RegisterEffect(e1)
  --fusion
  local e2=Effect.CreateEffect(c)
  e2:SetDescription(aux.Stringid(id,0))
  e2:SetCategory(CATEGORY_SPECIAL_SUMMON+CATEGORY_FUSION_SUMMON)
  e2:SetType(EFFECT_TYPE_IGNITION)
  e2:SetRange(LOCATION_PZONE)
	e2:SetProperty(EFFECT_FLAG_BOTH_SIDE)
	e2:SetTarget(Fusion.SummonEffTG(nil,Card.IsAbleToRemove,nil,Fusion.BanishMaterial))
	e2:SetOperation(Fusion.SummonEffOP(nil,Card.IsAbleToRemove,nil,Fusion.BanishMaterial))
	c:RegisterEffect(e2)
end