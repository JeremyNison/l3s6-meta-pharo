Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EAddition class >> fivePlusThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant value: 5.
	ep2 := EConstant value: 3.
	^ self new left: ep1; right: ep2
]

{ #category : #'instance creation' }
EAddition class >> left: anInteger right: anInteger2 [
	^ self new left: anInteger; right: anInteger2
]

{ #category : #accessing }
EAddition >> evaluateWith: anObject [
	^ (right evaluateWith: anObject)
		+ (left evaluateWith: anObject)
]

{ #category : #printing }
EAddition >> operatorString [
	^ ' + '
]

{ #category : #printing }
EAddition >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: ' + '.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]
