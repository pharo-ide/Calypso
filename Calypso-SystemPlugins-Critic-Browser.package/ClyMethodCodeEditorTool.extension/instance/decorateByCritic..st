*Calypso-SystemPlugins-Critic-Browser
decorateByCritic: aCriticTool
	| segments |
	textMorph segments removeAllSuchThat: [ :each | each class = QARubTextSegmentMorph ].
	
	segments := aCriticTool buildCriticalTextSegmentsFor: editingMethod.	
	segments do: [ :each | textMorph addSegment: each]