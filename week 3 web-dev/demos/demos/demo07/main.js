// Creaet a calc function which will accept name of opeartion 
// and n1,n2 as parameter as per the opeation will give result
function add(n1,n2){return n1+n2;}
function sub(n1,n2){return n1-n2;}
function mul(n1,n2){return n1*n2;}
function div(n1,n2){return n1/n2;}

function calc(operations,n1,n2){
    console.log(operations(n1,n2));
}
const n1=200;
const n2=40;
calc(add,n1,n2);
calc(sub,n1,n2);
calc(mul,n1,n2);
calc(div,n1,n2);