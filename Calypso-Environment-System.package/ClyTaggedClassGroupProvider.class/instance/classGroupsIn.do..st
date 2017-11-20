building groups
classGroupsIn: aPackageScope do: aBlock
	| classGroups query group |
	classGroups := Dictionary new.	
	aPackageScope packagesDo: [ :each |
		each tagsForClasses do: [ :eachTag |	
			classGroups at: eachTag ifAbsentPut: [
				query := ClyTaggedClasses by: eachTag from: aPackageScope.
				group := ClyTaggedClassGroup named: eachTag on: query.
				aBlock value: group.
				group].				
	]]