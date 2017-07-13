*Calypso-Plugins-FileOut-Environment
fileOut
	| internalStream |
	internalStream := (String new: 1000) writeStream.
	internalStream header; timeStamp; cr.
	self methods do: [:each |
		each origin printMethodChunk: each selector on: internalStream ].
	internalStream trailer.

	^ FileStream writeSourceCodeFrom: internalStream baseName: (self classes first name , '-' , self name) isSt: true.