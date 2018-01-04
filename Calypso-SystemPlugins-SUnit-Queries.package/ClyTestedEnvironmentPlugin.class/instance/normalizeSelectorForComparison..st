tests lookup
normalizeSelectorForComparison: aString
	"Returns a normalized version of given string without colons and in all lowercase"
	| selectorString selectorStringSize normalizedSelectorString normalizedSelectorStringSize |
	"asString to convert Symbols"
	selectorString := aString asString.
	selectorStringSize := aString size.
	normalizedSelectorString := selectorString class new: selectorStringSize.
	normalizedSelectorStringSize := 0.
	"this inlined to:do: loop with direct string manipulation is faster than
	using copyWithout:, which relies on reject:"
	1 to: selectorStringSize do: [ :i | 
		| nextChar |
		(nextChar := selectorString at: i) == $:
			ifFalse: [
				normalizedSelectorString
					at: (normalizedSelectorStringSize := normalizedSelectorStringSize + 1)
					put: nextChar ] ].
	"faster to use asLowercase on the entire string after instead of on chars
	in the to:do: loop because of the bad Character>>#asLowercase implementation"
	^ (normalizedSelectorStringSize < selectorStringSize
		ifTrue: [ normalizedSelectorString first: normalizedSelectorStringSize ]
		ifFalse: [ selectorString ]) asLowercase