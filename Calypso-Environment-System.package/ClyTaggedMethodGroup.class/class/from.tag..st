instance creation
from: aClassScope tag: tagName
	^ClyTaggedMethodGroup named: tagName on: (ClyTaggedMethods by: tagName from: aClassScope)