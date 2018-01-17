# Calypso
[![Build Status](https://travis-ci.org/dionisiydk/Calypso.svg?branch=master)](https://travis-ci.org/dionisiydk/Calypso)

Pharo system browser

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

## Installation
```Smalltalk
Metacello new
  baseline: 'Calypso';
  repository: 'github://dionisiydk/Calypso';
  load
```
To make Calypso default toolset evaluate:
```Smalltalk
ClyBrowser beAllDefault
```
And to open browser evaluate: 
```Smalltalk
ClyFullBrowser open.
```

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
And please report this problem on issue tracker or with direct mail to me or Pharo mailing list.
## FAQ

### What is a "Project" (as opposed to a "Package")?
While project mode will become the default view in the future, for now it is more like a stub. 
Some of the current directions are integration with a new package management [Cargo](https://github.com/demarey/cargo) (Christophe is working on it) and a possible Metacello backend.
