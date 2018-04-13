controlling
processQueue

	| available next |
	[
		available := OrderedCollection with: updateQueue next.
		[ next := updateQueue nextOrNil ] whileNotNil: [ available add: next ].
		self runUpdateFor: available.	
	] repeat