accessing
actualObject
	"environmentItem can be nil when actual object was removed. In that case actualObject should be nil too. It is convention of updating items/selection logic"
	^environmentItem ifNotNil: [environmentItem actualObject]