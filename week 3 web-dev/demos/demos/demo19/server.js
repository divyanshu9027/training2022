const http=require('http');
const fs=require('fs');
const port=3000;
const serverMessage=`http://localhost:${port} started`;
function myfunction(file_name,content_type,resp){
    fs.readFile(file_name,(err,data)=>{
        resp.setHeader('Content-Type',content_type);
        if(err){
            resp.write(err);                     
        }
        else{                    
            resp.write(data);                                        
        }
        resp.end();

    });
}


http.createServer((req,resp)=>{
    const url=req.url;
    const method=req.method;
    // //Below code explains what is url and method in request
    // resp.setHeader('Content-Type','text/html')
    // resp.write("<br/>req.url: "+url);
    // resp.write("<br/>req.method: "+method);
    // resp.end();

    switch(url){
        case '/':
        case '/index.html':
            myfunction(__dirname+'/index.html','text/html',resp);
            break;
        case '/aboutus.html':
            myfunction(__dirname+'/aboutus.html','text/html',resp);
            break;            
        case '/contactus.html':
            
        myfunction(__dirname+'/contactus.html','text/html',resp);
            break;
        case '/signup.html':
            myfunction(__dirname+'/signup.html','text/html',resp);
            break;
        case '/signin.html':    
        myfunction(__dirname+'/signin.html','text/html',resp);
            break;
        case '/style.css':
            myfunction(__dirname+'/css/style.css','text/css',resp);
            break;
        default:

                resp.write('Cotentn not found');
                resp.end();
            break;
    }

}).listen(port,()=>{console.log(serverMessage);});