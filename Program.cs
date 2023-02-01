using distribuidoraAPI.Negocio.entidades;
using Microsoft.EntityFrameworkCore;
using Microsoft.OpenApi.Models;
using System.Reflection;
using Serilog;
using System.Text.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Host.UseSerilog();
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle

builder.Services.AddDbContext<DistribuidoraDBContext>(opt =>
    opt.UseSqlServer(builder.Configuration.GetConnectionString("DistribuidoraDB"))
    .EnableSensitiveDataLogging(true));

builder.Services.AddControllers().AddJsonOptions(x =>
                x.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles);

builder.Services.AddEndpointsApiExplorer();
//Añade descripción al archivo de Swagger
builder.Services.AddSwaggerGen(options =>
{
    options.SwaggerDoc("v1", new OpenApiInfo
    {
        Version = "v1",
        Title = "Distribuidora API",
        Description = "ASP.NET Core Web API para administrar candidatos con sus empleos",
       
    });

    //Utilizo Reflection para crear un archivo XML, que contenga los comentarios de cada método para incluirlos en el archivo de Swagger
    var xmlFilename = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
    options.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, xmlFilename));
});


//Logs con Serilog, en un archivo que en este caso se encuentra en la raíz del proyecto, pero podría ir en la URL que se asigne al File()
Log.Logger = new LoggerConfiguration().WriteTo.File("./log/", rollingInterval: RollingInterval.Day).CreateLogger();
// Log.Logger = new LoggerConfiguration().CreateLogger();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
