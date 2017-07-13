building
buildFromClasses: classes

	classes do: [ :eachClass | self buildFromMethods: eachClass localMethods]