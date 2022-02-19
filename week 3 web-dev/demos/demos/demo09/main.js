//Create calc function accepting arrow functions
// ()=>{} (for these parameters)=>{do this action}

function calc(operations,n1,n2){
    console.log(operations(n1,n2));
}
const n1=2000;
const n2=4;
console.log("Addition ");
calc((a,b)=>a+b,n1,n2);

console.log("Substraction ");
calc((a,b)=>a-b,n1,n2);

console.log("Multiply ");
calc((a,b)=>a*b,n1,n2);

console.log("Devide ");
calc((a,b)=>a/b,n1,n2);
