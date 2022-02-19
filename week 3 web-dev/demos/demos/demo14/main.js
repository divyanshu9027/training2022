// person object using custom constructor
function Person(fName,lName){
    this.firstName=fName;
    this.lastName=lName;
    this.details=function(){
        return this.firstName+" "+this.lastName;
    }
}

const person=new Person("Amit","Shinde");
console.log("Person properties: "+person.firstName+" "+person.lastName);
console.log("Person Details: "+person.details());