*Calypso-SystemPlugins-Critic-Queries
computeCritiquesBy: aSystemCritic
	(self isInstalled not or: [ self package isNil ]) ifTrue: [ 
		^aSystemCritic registerCritiques: #() for: self].
	
	^super computeCritiquesBy: aSystemCritic