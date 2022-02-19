const http=require('http');
const port=3000;
http.createServer((req,resp)=>{
    resp.setHeader('Content-Type','text/html');
    resp.write('<h1> Welcome</h1>');//dynamic html page
    resp.end();
}).listen(port,()=>{
    console.log(`http://localhost:${port} started`);
});