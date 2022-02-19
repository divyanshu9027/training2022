// Array in JavaScript
const colors=["red","green","blue"];
// Traditional way of for
for(let i=0;i<colors.length;i++){
    console.log(colors[i]);
}
console.log("For each in javascript");
for(let i in colors){
    console.log(colors[i]);
}
console.log("Do While in javascript");
let i=0;
do{
    console.log(colors[i]);
    i++;
}while(i<colors.length);
console.log("While in javascript");
i=0;
while(i<colors.length){
    console.log(colors[i]);
    i++;
}

