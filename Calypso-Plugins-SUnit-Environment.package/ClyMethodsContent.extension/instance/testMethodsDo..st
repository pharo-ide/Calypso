*Calypso-Plugins-SUnit-Environment
testMethodsDo: aBlock

	items do: [ :eachItem | | eachMethod |
		eachMethod := eachItem actualObject.
		(eachMethod isTestMethod and: [ eachMethod origin isAbstract not]) 
			ifTrue: [ aBlock value: eachMethod]]