namespace ApiDemo.Tests;

public class HelloWorldTests
{
    [Fact]
    public void Hello()
    {
        Assert.Equal("Hello", nameof(HelloWorld.Hello));
        Assert.Equal("World", HelloWorld.Create().Hello);
    }
}
