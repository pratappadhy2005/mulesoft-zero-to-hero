%dw 2.0
output application/dw

var obj1= {
	one : "1",
	two: "2"
}

var obj2= {
	one : "1",
	two: "2"
}

var objArr = [obj1, obj2]

var numbers = [1, 'abc',33,11]
---
obj1 - 'two'