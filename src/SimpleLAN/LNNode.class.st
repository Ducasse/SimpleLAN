Class {
	#name : #LNNode,
	#superclass : #Object,
	#instVars : [
		'name',
		'nextNode'
	],
	#category : #SimpleLAN
}

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
