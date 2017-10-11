testing
modifiesExtension
	^editingMethod isExtension 
		ifTrue: [ extendingPackage ~~ editingMethod package  ]
		ifFalse: [ extendingPackage notNil and: [extendingPackage ~~ self methodClass package] ]