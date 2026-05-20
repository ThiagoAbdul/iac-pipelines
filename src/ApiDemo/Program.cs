using ApiDemo;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddHealthChecks();

var app = builder.Build();

app.UseHealthChecks("/health");

app.MapGet("/api/hello", HelloWorld.Create);

app.Run();
