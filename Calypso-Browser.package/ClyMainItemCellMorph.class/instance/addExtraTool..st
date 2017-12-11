accessing
addExtraTool: aMorph
	
	extraToolMorphs ifNil: [ extraToolMorphs := OrderedCollection new].
	extraToolMorphs add: aMorph.
	^aMorph