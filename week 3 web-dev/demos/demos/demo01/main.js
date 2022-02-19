// // Variables use keyword var
// console.log(message);//undefined
// var message="Welcome to JavaScript!"; // declaration and initialzation

function f1(){
    console.log("inseide f1() outer variable before reassigning value : "+num1);
    num1=2222; // intialized with some other  value 
    console.log("inside f1() outer variable after reassigning value: "+num1);
}
var num1=2000;
console.log("Before function call: "+num1);
f1();
// var num1=2000;
console.log("After function call : "+num1);
// Declare variable with let keyword: local scope variable 
// 1. Declare the let variable first
// 2. assign the value to the let variable
// 3. use the variable 
function f2(){
    // console.log("inseide f1() outer variable before reassigning value : "+num1);
    let num1=33333; // intialized with some other  value 
    console.log("inside f1() outer variable after reassigning value: "+num1);
}
console.log("Before function call: "+num1);//2000
f2();// undefined // 33333
console.log("After function call : "+num1);//2000

for(let i=0;i<11;i++){
    console.log(i);
}
// console.log("outside loop i="+i);//ReferenceError: i is not defined

for(var j=0;j<11;j++){
    console.log(j);
}
console.log("outside loop j="+j);//ReferenceError: i is not defined

// Create  constant variales using const keyword
// 1. declare and initialze 
// 2. use 
const message="Pica PicaPicaPicaPicaPicaPicaPica";
console.log("Pickachu "+message);
// message="no pica pica"; TypeError: Assignment to constant variable.
// console.log("Pickachu "+message);
// const m;
// m="pica pica"; SyntaxError: Missing initializer in const declaration
// console.log("message "+m);