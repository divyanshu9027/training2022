// Module with single function
const mymodule=require('./add');
console.log("mymodule(10,20)="+mymodule(10,20));

// Module with multiple functions
const calc=require('./calc');

let result=calc.add(10,20);
console.log("addition(10,20)= "+result);

result=calc.sub(10,20);
console.log("substraction(10,20)= "+result);

result=calc.mul(10,20);
console.log("multiply(10,20)= "+result);

result=calc.div(10,20);
console.log("devide(10,20)= "+result);
