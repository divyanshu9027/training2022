function Person(fName,lName){
    this.firstName=fName;
    this.lastName=lName;
    this.details=()=>{return this.firstName+" "+this.lastName};
}
    const p1=new Person("Ganesh","Pakhale");
    const p2=new Person("Akash","B");
    const p3=new Person("Gaurav","M");
    
const People=[ p1,p2,p3 ];

for(let i in People){
    console.log(People[i].details());
}