/*
Write function that reverses a string
Take a string as an arguement
Iterate over string, subtracting 1 from index
Return reverseString
*/

function reverse(string) {
  var reverseString = "";
  
  for (var index = string.length-1 ; index >= 0; index--)
    reverseString += string[index];
  return reverseString;
}

// DRIVER TEST CODE

reversedString = reverse("Hello");
	if (1 == 1){
		console.log("'Hello' written backwards is '" + reversedString +"'");
	}
