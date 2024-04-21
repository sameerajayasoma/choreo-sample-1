import ballerina/http;

service /hello on new http:Listener(9070) {
    resource function get greeting() returns string{
        return getGreeting();
    }
}

function getGreeting() returns string {
    return "Hello, World Dinasaur!";
}   
