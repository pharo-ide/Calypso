accessing
chooseClassesForNewMethod

	^self classSelection rawItems collect: [ :each | 
		metaLevelScope resolveClass: each]