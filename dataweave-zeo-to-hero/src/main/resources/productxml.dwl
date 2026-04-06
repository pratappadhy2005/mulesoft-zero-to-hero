%dw 2.0
output application/json
import getOfferPrice,lambdaGetOfferPrice from mymodules::CustomModules
import dw::core::Strings

var myUpper = upper

fun formatData(myinput:String, myformatter: (String) -> String) = myformatter(myinput)

var numbers = [22,34,67,89]

fun criteriaFunction(item, index) = mod(item,2) == 0

var words = ["ball","apple", "tango"]

---

// function chaining
(numbers filter (item, index)-> (mod(item,2)!=0)) orderBy (item, index)-> item

//numbers orderBy(item, index) -> item

//orderBy(words, (item, index) -> -sizeOf(item))

//sizeOf(words)

//filter(numbers, criteriaFunction)


//Strings::capitalize("Pratap")

/**
 * 
 *  Calling my custom function
 * 
**/

//"pratap" formatData myUpper

//formatData("pratap", myUpper)

/**product:{
	
	pid: payload.productId,
	name: upper(payload.name),
	offerprice: lambdaGetOfferPrice(payload.originalPrice, payload.offer.discountPercentage),
	offerpriceNormal:getOfferPrice(payload.originalPrice, payload.offer.discountPercentage)
}**/