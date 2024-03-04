Class {
	#name : #LNNode,
	#superclass : #Object,
	#instVars : [
		'name',
		'nextNode'
	],
	#category : #SimpleLAN
}

{ #category : #examples }
LNNode class >> example1 [

	<script>
	(LNNode new
    name: 'Mac' ;
    nextNode: (LNNode new name: 'PC1'))  accept: (LNPacket new addresseeName: 'Mac')
]

{ #category : #testing }
LNNode >> accept: aPacket [
	"Having received aPacket, send it on. This is the default behavior. My subclasses may override me to do something special."
	
	self send: aPacket 
]

{ #category : #testing }
LNNode >> hasNextNode [
	
	^ nextNode isNotNil
]

{ #category : #initialization }
LNNode >> initialize [

	super initialize.
	name := 'unamed'
]

{ #category : #accessing }
LNNode >> name [
	^ name
]

{ #category : #accessing }
LNNode >> name: aString [ 
	name := aString
]

{ #category : #accessing }
LNNode >> nextNode [
	^ nextNode
]

{ #category : #accessing }
LNNode >> nextNode: aLNNode [ 
	nextNode := aLNNode
]

{ #category : #printing }
LNNode >> printOn: aStream [

	aStream nextPutAll: name.
	aStream nextPutAll: ' -> '.
	nextNode
		ifNil: [ aStream nextPutAll: '/' ]
		ifNotNil: [ aStream nextPutAll: nextNode name ]
]

{ #category : #testing }
LNNode >> send: aPacket [

	nextNode ifNotNil: [
		self name trace.
		' sends a packet to: ' trace.
		nextNode name traceCr.
		nextNode accept: aPacket ]
]
