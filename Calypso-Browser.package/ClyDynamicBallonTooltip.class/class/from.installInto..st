instance creation
from: aBlock installInto: aMorph
	^(self from: aBlock)
		installInto: aMorph; 
		yourself