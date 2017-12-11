accessing
displayItemPropertyBy: propertyBlock
	displayBlock := [ :cell :item | 
		cell label contents: (propertyBlock value: item browserItem) ]