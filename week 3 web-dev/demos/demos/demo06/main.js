//callback function
function f1(){
    console.log("We will call this function f1() in other functions");
}

function doSomething(functionName){
    console.log("Doing something");
    console.log("calling function whoes named is passed in functioname");
    functionName();
    console.log("Work completed!");
}

doSomething(f1);