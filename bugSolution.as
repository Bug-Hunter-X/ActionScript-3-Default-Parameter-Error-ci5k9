function myFunction(param1:String, param2:int = 10):void {
  trace(param1);
  trace(param2);
}

myFunction("Hello", 20);
myFunction("World", 10); // Provide default value for param2

//Alternative Solution: Restructure parameters
function myFunction2(param1:String, ...rest):void{
    var param2:int = 10; 
    if(rest.length > 0){
        param2 = rest[0];
    }
    trace(param1);
    trace(param2);
}
myFunction2("Hello",20);
myFunction2("World");