//Create calc function accepting anonymous function

function calc(operations,n1,n2){

    console.log(operations(n1,n2));
}
const n1=1000;
const n2=33;

console.log("Addition ");
calc(function(a,b){return a+b},n1,n2)

console.log("Substraction ");
calc(function(a,b){return a-b},n1,n2)

console.log("Multiplication ");
calc(function(a,b){return a*b},n1,n2)

console.log("devision ");
calc(function(a,b){return a/b},n1,n2)
