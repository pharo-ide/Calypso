building
fillWith: classes
	| actualClassScope classMap addedClasses |
	actualClassScope := self scope asLocalClassScope. 
	classMap := hierarchy buildFrom: classes.
	addedClasses := Set new.
	classMap doInOrderWithDepth: [ :each :depth |
		(addedClasses includes: each) ifFalse: [ 
			addedClasses add: each.
			self buildGroupFor: each depth: depth toShowMethodsFrom: actualClassScope]]