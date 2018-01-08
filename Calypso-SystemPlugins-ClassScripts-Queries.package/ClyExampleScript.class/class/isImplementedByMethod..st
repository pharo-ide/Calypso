script detection
isImplementedByMethod: aMethod
	^(aMethod selector beginsWith: 'example') 
		or: [aMethod hasPragmaNamed: #example]