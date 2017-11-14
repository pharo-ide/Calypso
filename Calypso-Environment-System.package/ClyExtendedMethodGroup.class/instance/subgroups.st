accessing
subgroups
	| subgroups subgroup classPackage |
	subgroups := Dictionary new.
	
	classScope do: [ :eachClass | 
		classPackage := eachClass package.
		eachClass localMethods 
			reject: [:eachMethod | eachMethod isDefinedInPackage: classPackage] 
			thenDo: [:eachMethod |
				subgroup := self findOrCreateSubgroupFor: eachMethod in: subgroups.
				(subgroup classes includes: eachClass) ifFalse: [ subgroup addClass: eachClass]]].
	
	^subgroups
			