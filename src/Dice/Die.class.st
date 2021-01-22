Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: aNumber [
	"initialize a die with aNumber faces."
	| instance |
	instance:= self new.
	instance faces: aNumber.
	^ instance
]

{ #category : #arithmetic }
Die >> + aDicable [
	^ aDicable sumWithDie: self
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: aNumber [
	faces:= aNumber
]

{ #category : #initialization }
Die >> initialize [
	"Initialize the number of faces to 6 by default" 
	super initialize.
	faces:= 6
]

{ #category : #printing }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	aStream print: faces.
	aStream nextPutAll: ')'.
]

{ #category : #accessing }
Die >> roll [
	^ self faces atRandom
]

{ #category : #'as yet unclassified' }
Die >> sumWithDie: aDie [
	^ DieHandle new 
	addDie: self;
	addDie: aDie; yourself
]

{ #category : #'as yet unclassified' }
Die >> sumWithHandle: aDieHandle [
	| handle |
	handle := DieHandle new.
	aDieHandle dice do: [ :each | handle addDie: each ].
	handle addDie: self.
	^ handle  
]
