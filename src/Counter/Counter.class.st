Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #Counter
}

{ #category : #initialization }
Counter class >> withValue: anInteger [
	| counter |
	counter := self new count: anInteger.
	^ counter
]

{ #category : #accessing }
Counter >> count [
	 ^ count 
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger
]

{ #category : #accessing }
Counter >> decrement [ 
	
	count:= count - 1.
]

{ #category : #accessing }
Counter >> increment [

	count:= count + 1
]

{ #category : #initialization }
Counter >> initialize [ 
	"set the initial value of the value to 0"
	super initialize.
	count := 0.
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' withValue: ';
		nextPutAll: count printString.
	aStream cr
]
