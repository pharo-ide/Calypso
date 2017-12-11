accessing
chooseClassesForNewMethod

	^self classSelection actualObjects collect: [ :each | 
		metaLevelScope metaLevelOf: each]