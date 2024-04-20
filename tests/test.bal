import ballerina/test;

@test:Config
function testGreeting() {
    string greeting = getGreeting();
    test:assertEquals(greeting, "Hello, Worl!");
}