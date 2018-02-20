I provide tagged method groups. 
I collect all tags from class scope and create ClyTaggedMethodGroup instances for each of them.

I skip any tag which represent class extension, according to star convention('*PackageName'). Class extensions are handled by different provider: ClyExtendedMethodGroupProvider. It creates only general "extensions" group which can be expanded by subgroups for each package which extends given class. Subgroups are represented by explicit ClyExternalPackageMethodGroup. No star-convension is needed here