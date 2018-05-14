private
createBlockFromPattern

	(pattern value endsWith: ']') ifFalse: [
		badScript := true.
		^self].

	[scriptBlock := self class compiler evaluate: pattern value] 
		on: Exception do: [:err | badScript := true ]