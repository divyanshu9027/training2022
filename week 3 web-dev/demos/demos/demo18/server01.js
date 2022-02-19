// step1: load the http module
const http=require('http');
const port=3000;
//step2: Server must be created
//step2.2: what server will do when client sends the request
function onRequest(req,resp){
    // resp.setHeader('Content-Type','text/text');
    // resp.write("<h1> Welcome!<h1>");
    // resp.write("\nHTTP Method"+req.method);
    // resp.write("\nRequest URL"+req.url);
    resp.setHeader('Content-Type','text/html');
    resp.write("<h1> Welcome!<h1>");
    resp.write("<br/>HTTP Method"+req.method);
    resp.write("<br/>Request URL"+req.url);
    
    resp.end();
}
const server=http.createServer(onRequest);
//Step3: Server must be listening to a particular port
function onServerStart(){
    console.log(`http://localhost:${port} started`);
}
server.listen(port,onServerStart);


