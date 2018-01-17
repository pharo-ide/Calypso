accessing
getProperty: aPropertyClass 

	^properties detect: [ :each | each isKindOf: aPropertyClass ] 