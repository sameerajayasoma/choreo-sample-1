import ballerina/io;

public function main() {
    io:println(getGreeting());
}

function getGreeting() returns string {
    return "Hello, World!";
}   
