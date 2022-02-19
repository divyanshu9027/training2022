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

module.exports=calc;