// Understanding the Data types and Variables of Javascript

v1=10;
v2="10";
v3="10.0";
v4=10.0;
v5=(v1<v2);

console.log(v1+" type of "+typeof v1);
console.log(v2+" type of "+typeof v2);
console.log(v3+" type of "+typeof v3);
console.log(v4+" type of "+typeof v4);
console.log(v5+" type of "+typeof v5);

// Comparison operater : == or ===
console.log("using ==");
if(v1==v2){
    console.log(v1+" is having value equal to "+v2);
}
if(v3==v4){
    console.log(v3+" is having value equal to "+v4);
}
console.log("using ===");
if(v1===v2){
    console.log(v1+" is having value equal to "+v2);
}else{
    console.log(v1+" is having same value but data type is different "+v2);    
}
if(v3===v4){
    console.log(v3+" is having value equal to "+v4);
}
else{
    console.log(v3+" is having same value but data type is different "+v4);    
}
// v2="10"; v3="10.0";
if(v2===v3){
    console.log(v3+" is having value equal to "+v2);
}
else{
    console.log(v3+" is having same data type but value is different "+v2);    
}
v2="101.9"; v3="101.9";
if(v2===v3){
    console.log(v3+" is having same data type same value "+v2);
}
else{
    console.log(v3+" is having same data type but value is different "+v2);    
}
