EXPORTS = {}

EXPORTS.Init = function( self )
	self:SetContextThink( "init_think", function()
    self:GetAbilityByIndex(0):SetLevel(4)
		self.aiThink = aiThinkStandardSkill
		self.CheckIfHasAggro = CheckIfHasAggro
		self.Skill = UseSkillOnTarget
		self.ability = self:GetAbilityByIndex(0)
		self.NextWayPoint = NextWayPoint
		self.Unstuck = Unstuck
		self:SetContextThink( "ai_rubick.aiThink", Dynamic_Wrap( self, "aiThink" ), 0 )
	end, 0 )
end

return EXPORTS
