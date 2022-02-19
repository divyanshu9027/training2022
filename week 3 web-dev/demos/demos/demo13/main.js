//person object firstName,lastName
//new Object() new is allocating memeory for Object()
const person=new Object();
person.firstName="Amit";
person.lastName="Jha";

console.log("object.property "+person.firstName+" "+person.lastName);
person.details=function(){
    return this.firstName+" "+this.lastName;
}

console.log("Person details: "+person.details());