private
createBlockFromPattern

	(pattern endsWith: ']') ifFalse: [
		badScript := true.
		^self].

	[scriptBlock := self class compiler evaluate: pattern logged: false] 
		on: Exception do: [:err | badScript := true ]