Class {
	#name : #LNPacket,
	#superclass : #Object,
	#instVars : [
		'contents',
		'addresseeName',
		'originatorName'
	],
	#category : #SimpleLAN
}

{ #category : #accessing }
LNPacket >> addresseeName [

	^ addresseeName
]

{ #category : #accessing }
LNPacket >> addresseeName: aString [

	addresseeName := aString
]

{ #category : #accessing }
LNPacket >> contents [
	^ contents
]

{ #category : #accessing }
LNPacket >> contents: aString [ 
	contents := aString
]

{ #category : #initialization }
LNPacket >> initialize [

	super initialize.
	contents := ''.
	originatorName := '/'.
	addresseeName := '/'
]

{ #category : #testing }
LNPacket >> isAddressedTo: aNode [

	^ addresseeName = aNode name
]

{ #category : #accessing }
LNPacket >> originatorName [

	^ originatorName
]

{ #category : #accessing }
LNPacket >> originatorName: aString [

	originatorName := aString
]

{ #category : #accessing }
LNPacket >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ': '.
	aStream nextPutAll: contents.
	aStream nextPutAll: ' sentTo: '.
	aStream nextPutAll: addresseeName
]
