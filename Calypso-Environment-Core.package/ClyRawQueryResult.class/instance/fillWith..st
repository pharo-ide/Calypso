building
fillWith: queriedObjects

	| all |
	items ifNil: [ items := queriedObjects].
	all := OrderedCollection new: items size + queriedObjects size.
	all addAll: items; addAll: queriedObjects.
	items := all