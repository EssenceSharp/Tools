<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10.1 of February 6, 2014 on July 7, 2014 at 2:25:48 PM</time-stamp>


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

<body package="Essence#" selector="libraryPath">libraryPath

<body package="Essence#" selector="libraryPath:">libraryPath: anArrayOfStrings

<body package="Essence#" selector="libraryPathPrefix">libraryPathPrefix

<body package="Essence#" selector="libraryPathPrefix:">libraryPathPrefix: aString

<body package="Essence#" selector="libraryPathname">libraryPathname

<body package="Essence#" selector="pathnameDelimiter">pathnameDelimiter

<body package="Essence#" selector="pathnameDelimiter:">pathnameDelimiter: aChar
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>class initialization</category>

<body package="Essence#" selector="initialize">initialize
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>examples</category>

<body package="Essence#" selector="exportClassCategory">exportClassCategory

<body package="Essence#" selector="exportSelf">exportSelf
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>instance creation</category>

<body package="Essence#" selector="exportingTo:from:">exportingTo: qualifiedNamespaceName from: aLocalNamespace
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>utilities</category>

<body package="Essence#" selector="exportClass:to:">exportClass: aClass to: essenceNamespaceName

<body package="Essence#" selector="exportClassCategory:from:to:">exportClassCategory: classCategory from: aLocalNamespace to: essenceNamespaceName
</methods>

<methods>
<class-id>EssenceClassLibraryExporter class</class-id> <category>private</category>

<body package="Essence#" selector="constructPathnameFromPrefix:path:">constructPathnameFromPrefix: pathnamePrefix path: pathArray

<body package="Essence#" selector="defaultPathnameDelimiter">defaultPathnameDelimiter
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>EssenceClassLibraryExporter</class-id> <category>accessing</category>

<body package="Essence#" selector="essenceNamespacePath">essenceNamespacePath

<body package="Essence#" selector="essenceNamespacePath:">essenceNamespacePath: aSequenceOfStrings

<body package="Essence#" selector="localNamespace">localNamespace

<body package="Essence#" selector="localNamespace:">localNamespace: aLocalNamespace

<body package="Essence#" selector="organization">organization

<body package="Essence#" selector="outputPathname">outputPathname

<body package="Essence#" selector="qualifiedEssenceNamespaceName">qualifiedEssenceNamespaceName

<body package="Essence#" selector="qualifiedEssenceNamespaceName:localNamespace:">qualifiedEssenceNamespaceName: qualifiedNamespaceName localNamespace: aLocalNamespace
</methods>

<methods>
<class-id>EssenceClassLibraryExporter</class-id> <category>exporting</category>

<body package="Essence#" selector="exportClass:">exportClass: aClass

<body package="Essence#" selector="exportClassCategory:">exportClassCategory: classCategoryName

<body package="Essence#" selector="exportClassDefinition:">exportClassDefinition: aClass

<body package="Essence#" selector="exportClassVariablesOf:">exportClassVariablesOf: aClass

<body package="Essence#" selector="exportInitializationOf:">exportInitializationOf: aClass

<body package="Essence#" selector="exportMetaclassDefinition:">exportMetaclassDefinition: aMetaclass

<body package="Essence#" selector="exportMethodIn:source:on:">exportMethodIn: protocol source: source on: stream

<body package="Essence#" selector="exportMethodsOf:">exportMethodsOf: aBehavior 

<body package="Essence#" selector="exportVariableDefinition:value:pathPrefix:">exportVariableDefinition: name value: value pathPrefix: pathPrefix
</methods>

<methods>
<class-id>EssenceClassLibraryExporter</class-id> <category>private</category>

<body package="Essence#" selector="initializerValueStringFor:">initializerValueStringFor: aValue

<body package="Essence#" selector="instanceArchitectureOf:">instanceArchitectureOf: aClass
</methods>

<methods>
<class-id>EssenceClassLibraryExporter</class-id> <category>inter-Smalltalk compatibility</category>

<body package="Essence#" selector="linesOf:">linesOf: aString

<body package="Essence#" selector="newWriteStream:">newWriteStream: pathname

<body package="Essence#" selector="pathElementsOf:separator:">pathElementsOf: aString separator: separator

<body package="Essence#" selector="protocolsOf:">protocolsOf: aBehavior

<body package="Essence#" selector="selectorsOf:inProtocol:">selectorsOf: aBehavior inProtocol: protocol

<body package="Essence#" selector="withoutEnclosingWhitespace:">withoutEnclosingWhitespace: aString
</methods>

<initialize>
<class-id>EssenceClassLibraryExporter</class-id>
</initialize>

</st-source>