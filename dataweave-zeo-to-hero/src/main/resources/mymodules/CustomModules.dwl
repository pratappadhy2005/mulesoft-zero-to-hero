fun getOfferPrice(originalprice,discount)= originalprice * (100 - discount)/100

fun getOfferPriceMultiLine(originalprice,discount)= do {
	var s1= (100 - discount)
	var s2= originalprice * s1
	var s3 = s2/100
	---
	s3
}

var lambdaGetOfferPrice =(originalprice,discount)-> originalprice * (100 - discount)/100