controlling
processMethodChange: aMethodAnnouncement
	| method |
	self resetCacheOfMethod: aMethodAnnouncement methodAffected.
	
	method := aMethodAnnouncement methodAffected.
	method origin superclass ifNotNil: [ :superclass |
		(superclass lookupSelector: method selector) ifNotNil: [:overriddenMethod |
			^environment systemChanged: (ClyOverriddenMethodChanged method: overriddenMethod)]
	].
	method origin subclasses ifEmpty: [ ^self ].
	environment systemChanged: (ClyOverridingMethodsChanged overriddenMethod: method)