namespace ApiDemo;

public class HelloWorld
{
    public string Hello { get; init; } = "World";

    private HelloWorld(){}
    public static HelloWorld Create() => new();
}