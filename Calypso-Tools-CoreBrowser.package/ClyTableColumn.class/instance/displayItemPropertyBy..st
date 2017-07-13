accessing
displayItemPropertyBy: propertyBlock
	displayBlock := [ :cell :item | 
		cell addMorphBack: (propertyBlock value: item environmentItem) asMorph ]