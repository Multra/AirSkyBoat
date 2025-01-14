-----------------------------------
-- Curse
--
-- Description: Inflicts a curse on all targets in an area of effect.
-- Type: Enfeebling
-- Utsusemi/Blink absorb: Wipes shadows
-- Range: 15' radial
-- Notes: Curse has a very long duration.
-- TODO: This move can miss, so it's on the physical hit calc, but it's only effect is to apply curse. This means it either applies or misses, no resist state.
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local typeEffect = xi.effect.CURSE_I
    local noResist = 1

    skill:setMsg(xi.mobskills.mobStatusEffectMove(mob, target, typeEffect, 25, 0, 480, noResist))

    return typeEffect
end

return mobskillObject
