accessing
displayItemPropertyBy: propertyBlock
	displayBlock := [ :cell :item | 
		cell nameMorph contents: (propertyBlock value: item browserItem) ]