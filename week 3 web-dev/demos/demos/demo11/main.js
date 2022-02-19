// You need a logic which is called only once 
// can be acheived using closure (function(){})();
const calc=(function(){
    this.addition=(a,b)=>a+b;
    this.sustraction=(a,b)=>a-b;
    this.multiply=(a,b)=>a*b;
    this.devide=(a,b)=>a/b;
    return { 
        add:this.addition,
        sub:this.sustraction,
        mul:this.multiply,
        div:this.devide
    }
} )();

console.log("add= "+calc.add(10,20));
console.log("sub= "+calc.sub(10,20));
console.log("mul= "+calc.mul(10,20));
console.log("div= "+calc.div(10,20));