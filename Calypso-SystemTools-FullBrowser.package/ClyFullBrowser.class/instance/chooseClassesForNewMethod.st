accessing
chooseClassesForNewMethod

	^self classSelection actualObjects collect: [ :each | 
		metaLevelScope resolveClass: each]