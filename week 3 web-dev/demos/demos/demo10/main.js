//Closures
// Before closures
const calc=function (){
       this.addition= function (n1,n2){ 
            return n1+n2;
        }
        return  { add:this.addition};
        
}
const result=calc().add(10,20);
// console.log(result);
