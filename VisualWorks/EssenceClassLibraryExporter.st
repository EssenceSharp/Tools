<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10.1 of February 6, 2014 on July 30, 2014 at 2:36:45 PM</time-stamp>


<class>
<name>EssenceClassLibraryExporter</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>essenceNamespacePath localNamespace </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Essence</category>
<attributes>
<package>Essence#</package>
</attributes>
</class>

<shared-variable>
<name>LibraryPath</name>
<environment>EssenceClassLibraryExporter</environment>
<private>false</private>
<constant>false</constant>
<category>pathnames</category>
<attributes>
<package>Essence#</package>
</attributes>
</shared-variable>

<shared-variable>
<name>PathnameDelimiter</name>
<environment>EssenceClassLibraryExporter</environment>
<private>false</private>
<constant>false</constant>
<category>pathnames</category>
<attributes>
<package>Essence#</package>
</attributes>
</shared-variable>

<shared-variable>
<name>LibraryPathPrefix</name>
<environment>EssenceClassLibraryExporter</environment>
<private>false</private>
<constant>false</constant>
<category>pathnames</category>
<attributes>
<package>Essence#</package>
</attributes>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>accessing</category>

<body package="Essence#" selector="libraryPath">libraryPath	^LibraryPath copy</body>

<body package="Essence#" selector="libraryPath:">libraryPath: anArrayOfStrings	| size newLibraryPath |	size := anArrayOfStrings size.	size &lt; 1 		ifTrue:			[LibraryPath := #('.').			^self].	newLibraryPath := Array new: size.	1 to: size do: 		[:index |			newLibraryPath at: index put: (anArrayOfStrings at: index) asString].	LibraryPath := newLibraryPath</body>

<body package="Essence#" selector="libraryPathPrefix">libraryPathPrefix	^LibraryPathPrefix copy</body>

<body package="Essence#" selector="libraryPathPrefix:">libraryPathPrefix: aString	LibraryPathPrefix := (aString ifNil: ['.']) asString copy</body>

<body package="Essence#" selector="libraryPathname">libraryPathname	"EssenceClassLibraryExporter libraryPathPrefix: '/Users/chronos/Documents/DEV/Smalltalk/EssenceSharp/Source/Libraries/'"	"EssenceClassLibraryExporter libraryPath: #('VisualWorks')"		"EssenceClassLibraryExporter libraryPathname"		^self constructPathnameFromPrefix: self libraryPathPrefix path: self libraryPath</body>

<body package="Essence#" selector="pathnameDelimiter">pathnameDelimiter	^PathnameDelimiter</body>

<body package="Essence#" selector="pathnameDelimiter:">pathnameDelimiter: aChar	PathnameDelimiter := aChar ifNil: [self defaultPathnameDelimiter]</body>
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>class initialization</category>

<body package="Essence#" selector="initialize">initialize	"EssenceClassLibraryExporter initialize"		PathnameDelimiter := self defaultPathnameDelimiter.	LibraryPathPrefix := '.'.	LibraryPath := #()</body>
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>examples</category>

<body package="Essence#" selector="exportClassCategory">exportClassCategory	"EssenceClassLibraryExporter exportClassCategory"		(self exportingTo: 'Announcements' from: Smalltalk.Core)		exportClassCategory: #'System-Announcements'</body>

<body package="Essence#" selector="exportSelf">exportSelf	"EssenceClassLibraryExporter exportSelf"		(self exportingTo: 'Utilities' from: Smalltalk)		exportClass: self</body>
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>instance creation</category>

<body package="Essence#" selector="exportingTo:from:">exportingTo: qualifiedNamespaceName from: aLocalNamespace	^self new 		qualifiedEssenceNamespaceName: qualifiedNamespaceName		localNamespace: aLocalNamespace</body>
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>utilities</category>

<body package="Essence#" selector="exportClass:to:">exportClass: aClass to: essenceNamespaceName	"EssenceClassLibraryExporter exportClass: AbsolutePrice to: #TickTalk"		(self exportingTo: essenceNamespaceName from: aClass environment)		exportClass: aClass</body>

<body package="Essence#" selector="exportClassCategory:from:to:">exportClassCategory: classCategory from: aLocalNamespace to: essenceNamespaceName	"EssenceClassLibraryExporter exportClassCategory: #TickTalk from: Smalltalk to: #TickTalk"		(self exportingTo: essenceNamespaceName from: aLocalNamespace)		exportClassCategory: classCategory</body>
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>private</category>

<body package="Essence#" selector="constructPathnameFromPrefix:path:">constructPathnameFromPrefix: pathnamePrefix path: pathArray	| writeStream delimiter |	writeStream := (String new: 16) writeStream.	delimiter := self pathnameDelimiter.	writeStream nextPutAll: pathnamePrefix.	((pathnamePrefix endsWith: (String with: delimiter)) or: [pathArray isEmpty])		ifFalse: [writeStream nextPut: delimiter].	pathArray		do: [:pathElement | writeStream nextPutAll: pathElement]		separatedBy: [writeStream nextPut: delimiter].	^writeStream contents</body>

<body package="Essence#" selector="defaultPathnameDelimiter">defaultPathnameDelimiter	^Filename separator</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>EssenceClassLibraryExporter</class-id> <category>accessing</category>

<body package="Essence#" selector="essenceNamespacePath">essenceNamespacePath	^essenceNamespacePath</body>

<body package="Essence#" selector="essenceNamespacePath:">essenceNamespacePath: aSequenceOfStrings	| size newPath |	size := aSequenceOfStrings size.	newPath := Array new: size.	1 to: size do: [:index | newPath at: index put: (aSequenceOfStrings at: index) asString].	essenceNamespacePath := newPath.</body>

<body package="Essence#" selector="localNamespace">localNamespace	^localNamespace</body>

<body package="Essence#" selector="localNamespace:">localNamespace: aLocalNamespace	localNamespace := aLocalNamespace ifNil: [Smalltalk]</body>

<body package="Essence#" selector="organization">organization	^self localNamespace organization</body>

<body package="Essence#" selector="outputPathname">outputPathname		^self class constructPathnameFromPrefix: self class libraryPathname path: self essenceNamespacePath</body>

<body package="Essence#" selector="qualifiedEssenceNamespaceName">qualifiedEssenceNamespaceName	| writeStream |	writeStream := (String new: 16) writeStream.	self essenceNamespacePath do: [:pathElement | ] separatedBy: [writeStream nextPut: $.]</body>

<body package="Essence#" selector="qualifiedEssenceNamespaceName:localNamespace:">qualifiedEssenceNamespaceName: qualifiedNamespaceName localNamespace: aLocalNamespace		self 		essenceNamespacePath: (self pathElementsOf: qualifiedNamespaceName separator: $.); 		localNamespace: aLocalNamespace</body>
</methods>

<methods>
<class-id>EssenceClassLibraryExporter</class-id> <category>exporting</category>

<body package="Essence#" selector="exportClass:">exportClass: aClass	| metaclass |	self 		exportClassDefinition: aClass;		exportClassVariablesOf: aClass;		exportMethodsOf: aClass.	metaclass := aClass class.	self 		exportMetaclassDefinition: metaclass;		exportMethodsOf: metaclass.	(metaclass includesSelector: #initialize)		ifTrue: [self exportInitializationOf: aClass]</body>

<body package="Essence#" selector="exportClassCategory:">exportClassCategory: classCategoryName		(self organization listAtCategoryNamed: classCategoryName asSymbol)		do: [:className | self exportClass: (self localNamespace at: className)]</body>

<body package="Essence#" selector="exportClassDefinition:">exportClassDefinition: aClass	| pathname stream superclass instanceArchitecture instVarNames |		superclass := aClass superclass.	instanceArchitecture := self instanceArchitectureOf: aClass.	instVarNames := aClass instVarNames.	pathname := 		self class				constructPathnameFromPrefix: self outputPathname				path: (Array with: aClass name with: 'class.def').	stream := self newWriteStream: pathname.	[stream		tab;		nextPutAll: '"Configuration of the instance architecture, initial state and module memberships of ';		nextPutAll: aClass name;		nextPut: $";		cr; cr; tab;		nextPutAll: 'superclass: ';		nextPutAll: (superclass ifNil: ['nil'] ifNotNil: [superclass name]);		nextPut: $;;		cr; tab;		nextPutAll: 'instanceArchitecture: ';		nextPutAll: instanceArchitecture printString.		instVarNames size &gt; 0			ifTrue: 				[stream					nextPut: $;;					cr; tab;					nextPutAll: 'instanceVariableNames: #('.				instVarNames do: [:each | stream nextPutAll: each] separatedBy: [stream space].				stream nextPut: $)]] ensure: [stream close]</body>

<body package="Essence#" selector="exportClassVariablesOf:">exportClassVariablesOf: aClass	| pathnamePrefix |	pathnamePrefix := 		self class				constructPathnameFromPrefix: self outputPathname				path: (Array with: aClass name).	aClass classPool keysAndValuesDo: 		[:key :value | self exportVariableDefinition: key value: value pathPrefix: pathnamePrefix].</body>

<body package="Essence#" selector="exportInitializationOf:">exportInitializationOf: aClass	| pathname stream  |		pathname := 		self class				constructPathnameFromPrefix: self outputPathname				path: (Array with: aClass name with: 'initializer').	stream := self newWriteStream: pathname.	[stream		tab;		nextPutAll: '"Initialization of ';		nextPutAll: aClass name;		nextPut: $";		cr; cr; tab;		nextPutAll: 'self initialize'] ensure: [stream close]</body>

<body package="Essence#" selector="exportMetaclassDefinition:">exportMetaclassDefinition: aMetaclass	| pathname stream  instVarNames |		instVarNames := aMetaclass instVarNames.	pathname := 		self class				constructPathnameFromPrefix: self outputPathname				path: (Array with: aMetaclass soleInstance name with: 'metaclass.def').	stream := self newWriteStream: pathname.	[stream		tab;		nextPutAll: '"Configuration of the instance architecture, initial state and module memberships of ';		nextPutAll: aMetaclass name;		nextPut: $".		instVarNames  size &gt; 1			ifTrue: 				[stream					cr; cr; tab;					nextPutAll: 'instanceVariableNames: ';					nextPutAll: instVarNames storeString]] ensure: [stream close]</body>

<body package="Essence#" selector="exportMethodIn:source:on:">exportMethodIn: protocol source: source on: stream	| lines |	stream		tab;		nextPutAll: 'protocol: ';		nextPutAll: protocol asSymbol printString;		nextPutAll: ' method:';		cr; cr; tab;		nextPutAll: '[## '.	lines := self linesOf: (self withoutEnclosingWhitespace: source asString).	stream nextPutAll: (lines at: 1).	2 to: lines size do: 		[:index | 			stream 				cr; tab: 2;				nextPutAll: (lines at: index)].	stream cr; tab; nextPut: $]</body>

<body package="Essence#" selector="exportMethodsOf:">exportMethodsOf: aBehavior 	| isMeta className pathname stream nextRequiresCascadeContinuation |	isMeta := aBehavior isMeta.	className := isMeta ifTrue: [aBehavior soleInstance name] ifFalse: [aBehavior name].	pathname := 		self class				constructPathnameFromPrefix: self outputPathname				path: (Array						with: className						with: (isMeta								ifTrue: ['methods.class']								ifFalse: ['methods.instance'])).	stream := self newWriteStream: pathname.	[stream 		tab; 		nextPut: $";		nextPutAll: (isMeta ifTrue: ['Class'] ifFalse: ['Instance']); 		nextPutAll: ' methods for '; 		nextPutAll: className; 		nextPut: $"; 		cr; cr.	(self protocolsOf: aBehavior)		do: [:protocol | 				nextRequiresCascadeContinuation := false.				(self selectorsOf: aBehavior inProtocol: protocol)					do: [:selector | 						self							exportMethodIn: protocol							source: (aBehavior sourceCodeAt: selector) asString							on: stream.						nextRequiresCascadeContinuation := true]				separatedBy: 					[stream nextPut: $;; cr; cr]]		separatedBy: [nextRequiresCascadeContinuation ifTrue: [stream nextPut: $;; cr; cr]]] 			ensure: [stream close]</body>

<body package="Essence#" selector="exportVariableDefinition:value:pathPrefix:">exportVariableDefinition: name value: value pathPrefix: pathPrefix	| pathname stream |	pathname := 		self class				constructPathnameFromPrefix: pathPrefix				path: (Array with: name, '.variable').	stream := self newWriteStream: pathname.	[stream 		tab;		nextPutAll: 'self';		cr; tab; tab;		nextPutAll: 'accessPrivilege: #InHierarchy;';		cr; tab; tab;		nextPutAll: 'value: ';		nextPutAll: (self initializerValueStringFor: value)] ensure: [stream close]</body>
</methods>

<methods>
<class-id>EssenceClassLibraryExporter</class-id> <category>private</category>

<body package="Essence#" selector="initializerValueStringFor:">initializerValueStringFor: aValue	(aValue respondsToArithmetic or: [aValue isString or: [(aValue isKindOf: Boolean) or: [aValue isKindOf: Character]]]) ifTrue: [^aValue printString].	^'nil'</body>

<body package="Essence#" selector="instanceArchitectureOf:">instanceArchitectureOf: aClass	aClass isMeta ifTrue: [^#Class].	^aClass isVariable		ifTrue: 			[aClass isBits				ifTrue: [aClass isBytes ifTrue: [#IndexedByteSlots] ifFalse: [#IndexedWordSlots]]				ifFalse: [#IndexedObjectSlots]]		ifFalse: [#NamedSlots]</body>
</methods>

<methods>
<class-id>EssenceClassLibraryExporter</class-id> <category>inter-Smalltalk compatibility</category>

<body package="Essence#" selector="linesOf:">linesOf: aString	| readStream lines |	readStream := aString readStream.	lines := OrderedCollection new.	[readStream atEnd] whileFalse: [lines add: (readStream upTo: Character cr)].	^lines</body>

<body package="Essence#" selector="newWriteStream:">newWriteStream: pathname	| fn prefix |	fn := pathname asFilename.	prefix := fn directory.	prefix ensureDirectory.	fn exists ifTrue: [fn delete].	^fn writeStream</body>

<body package="Essence#" selector="pathElementsOf:separator:">pathElementsOf: aString separator: separator	| readStream writeStream |	readStream := aString readStream.	writeStream := (Array new: 8) writeStream.	[readStream atEnd]		whileFalse: [writeStream nextPut: (readStream upTo: separator)].	^writeStream contents</body>

<body package="Essence#" selector="protocolsOf:">protocolsOf: aBehavior	^aBehavior organization categories asSortedCollection</body>

<body package="Essence#" selector="selectorsOf:inProtocol:">selectorsOf: aBehavior inProtocol: protocol	^(aBehavior organization listAtCategoryNamed: protocol) asSortedCollection</body>

<body package="Essence#" selector="withoutEnclosingWhitespace:">withoutEnclosingWhitespace: aString	^aString trimBlanks</body>
</methods>

<initialize>
<class-id>EssenceClassLibraryExporter</class-id>
</initialize>

</st-source>
