Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #accessing }
EBinaryExpression >> left: anExpression [
	left := anExpression
]

{ #category : #printing }
EBinaryExpression >> operatorString [
	^ self subclassResponsibility 
]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EBinaryExpression >> right: anExpression [
	right := anExpression
]
