item decoration
doesAnyManager: metalinkManagers belongsTo: aMethod

	^metalinkManagers anySatisfy: [ :each |
		each notNil and: [ self doesNodeOf: each belongsTo: aMethod]]