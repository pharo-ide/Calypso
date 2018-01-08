tests
testNormalizingSelectorForComparison
	#(#one #one: #two #two: #one:two: #oneTwo: #+ #- #+-)
		with: #('one' 'one' 'two' 'two' 'onetwo' 'onetwo' '+' '-' '+-')
		do: [ :original :transformed | 
			self assert: (plugin normalizeSelectorForComparison: original) equals: transformed.
			self assert: (plugin normalizeSelectorForComparison: original asString) equals: transformed.
			self assert: (plugin normalizeSelectorForComparison: transformed) equals: transformed.

			"should always return a string copy"
			self deny: (plugin normalizeSelectorForComparison: original) == original.
			self deny: (plugin normalizeSelectorForComparison: transformed) == transformed.
			self deny: (plugin normalizeSelectorForComparison: original) isSymbol.
			self deny: (plugin normalizeSelectorForComparison: transformed) isSymbol ]