# SimpleLAN

SimpleLAN is a micro simulator for a LAN composed of nodes. It is an exercise for people learning object-oriented programming. 
A different version is available in the book _Learning Object-Oriented Programming, Design and TDD with Pharo_ available at http://books.pharo.org.
The version in this repository is used in a forth coming book _101 OOP_. In addition it serves as basis for a set of unguided exercises in the Mooc https://advanced-design-mooc.pharo.org.


## Installation
To install `SimpleLAN`, go to the Playground (`Ctrl+OW`) in your [Pharo](https://pharo.org/) image and execute the following Metacello script (select it and press Do-it button or `Ctrl+D`):

```Smalltalk
Metacello new
  baseline: 'SimpleLAN';
  repository: 'github://Ducasse/SimpleLAN/src';
  load.
```

## How to depend on it?

If you want to add a dependency on OrderedSet to your project, include the following lines into your baseline:

```Smalltalk
spec
  baseline: 'SimpleLAN'
  with: [ spec repository: 'github://Ducasse/SimpleLAN/src' ].
```

To read more about baselines and Metacello, check out the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) article on [Pharo Wiki](https://github.com/pharo-open-documentation/pharo-wiki).
