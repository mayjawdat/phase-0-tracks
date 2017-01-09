
//Release 0
//array = [phrase1, phrase2, phrase3]
//get length of each phrase in array
//compare two phrases at 0 and 1
//if 0 is larger, move in front of 1
//if array[i].length<array[i+1].length, array[i] = array[i+1]
//if not, move to phrases 1 and 2
//compare phrases at 1 and 2
//if 1 is larger, move in front of 2
//repeat until length of array[i] <= length of array[i-1] for all items
//return array[0]






var array = ["cats", "apples", "waterfalls"];


var longestWord = function(array) {
for (var i = 0; i < array.length; i++){
  console.log(array[i].length);

}
};

Release 1
make an array of keys
make an array of values
search key array for duplicates
if duplicates found return true
search value array for duplicates
if duplicates found return true
if not return false

Release 2
generates array
prints array
array function longest word function
print result