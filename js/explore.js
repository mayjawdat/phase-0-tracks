//Break down string into individual letters
//For each letter in string, put before previous letter in new string
//original string = [letter1][letter2][letter3][letter4]
//new string = [letter1]
//  = [letter2] + [letter1]
//  = [letter3] + [letter2][letter1]
//  = [letter4] + [letter3][letter2][letter1]


var reverse = function(str){

newString ="";
for (var i = str.length - 1; i >= 0; i--){
  newString = newString + str[i];
}
console.log(newString);
}

reverse("the day after tomorrow")
reverse("I love lamp")

if(2 > 1) {
  console.log(newString);
}