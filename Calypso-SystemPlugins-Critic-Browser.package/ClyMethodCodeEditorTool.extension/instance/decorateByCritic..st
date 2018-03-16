*Calypso-SystemPlugins-Critic-Browser
decorateByCritic: aCriticTool
	| segments |
	(textMorph segments select: [ :each | each class = ClyCriticalTextSegmentMorph ])
		do: [ :each | each delete ]. "We should not remove while iterating"
	
	segments := aCriticTool buildCriticalTextSegmentsFor: editingMethod.	
	segments do: [ :each | textMorph addSegment: each]