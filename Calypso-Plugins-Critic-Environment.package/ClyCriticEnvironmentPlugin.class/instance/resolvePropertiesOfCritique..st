items resolving
resolvePropertiesOfCritique: anEnvironmentItem
	| critique |
	super resolvePropertiesOfCritique: anEnvironmentItem.
	
	critique := anEnvironmentItem actualObject.
	anEnvironmentItem addProperty: (ClyCritiqueSeverity of: critique).
	critique sourceAnchor ifNotNil: [ :anchor |
		anchor providesInterval ifTrue: [ 
			 anEnvironmentItem addProperty: (ClySourceNodeCritiqueInterval from: anchor interval)] 
	].
	critique providesChange ifTrue: [ anEnvironmentItem markWith: ClyCritiqueFixableTag]