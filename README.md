# Calypso
[![Build Status](https://travis-ci.org/pharo-ide/Calypso.svg?branch=master)](https://travis-ci.org/pharo-ide/Calypso)

The Pharo system browser (now live in Pharo 7)

Consists of:
- new navigation model
- fast table for UI
- tabs toolbar instead of single source code panel
  - separate tools in tabs to create/edit methods/classes
- explicit commands instead of duplicated menu and shortcuts 
- extendable by plugins
- suitable for remote scenario
- new features:
  - method group view instead of protocols view
      - "dynamic protocols"
      - based on method tags as symbols
      - support multiple tags per method
      - not required star convention for class extension
  - package view is based on class groups
      - "dynamic protocols" for classes
      - based on class tags as symbols
      - support multiple tags per class
  - visibility option for inherited methods
  - methods inherited from traits are not shown by default
  - variable view as special mode for method group view.  
  - and more

## Contribution (Pharo 7 and higher)
Use dev branch of Calypso for contribution:
```Smalltalk
Metacello new
  baseline: 'Calypso';
  repository: 'github://pharo-ide/Calypso:dev/src';
  load
```
### Pharo 6 installation
To install Calypso properly on Windows check that Iceberg intergation is disabled (it is enabled by default):
```Smalltalk
Iceberg enableMetacelloIntegration: false.
Metacello new
  baseline: 'Calypso';
  repository: 'github://pharo-ide/Calypso:pharo6';
  load
```
To make Calypso default toolset evaluate:
```Smalltalk
ClyBrowserMorph beAllDefault
```
And to open browser evaluate: 
```Smalltalk
ClyFullBrowser open.
```
Or use World menu Calypso item
## Documentation

If you want to learn more about the architecture of Calypso, refer to the the [Pharo Infrascture mini booklet](https://github.com/SquareBracketAssociates/Booklet-Infrastructure) as well as the [ClassAnnotation project](https://github.com/pharo-ide/ClassAnnotation). 

The classes in the Calypso package also have some high level documentation as well.


## Problems
If you will find many processes hanging in the image it can be caused by some issue of critic plugin implementation. Some people report it in the past. It should be fixed now but there is always possibility that fix is not complete.

Following line should be enough to disable critic method group with all related computation. It is the main reason of that kind of problems:
```Smalltalk
ClyCriticEnvironmentPlugin disableMethodGroup.
```
It is not full critic disable. If it not helps then turn off it completely:
```Smalltalk
ClyCriticBrowserPlugin disable.
ClyCriticEnvironmentPlugin disable.
ClyNavigationEnvironment reset.
```
And please report this problem on issue tracker or with direct mail or Pharo mailing list.
