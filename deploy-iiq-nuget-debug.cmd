
set /p ApiKey=Enter the API key required for publishing to nuget.iqapps.io: 

:: ---------------------------------------------------------
:: Spark.NSwag.Core
:: ---------------------------------------------------------

cd src\NSwag.Core
del bin\Debug\*.nupkg

dotnet build
dotnet pack

dotnet nuget push bin\Debug\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package

cd ..\..

:: ---------------------------------------------------------
:: Spark.NSwag.Annotations
:: ---------------------------------------------------------

cd src\NSwag.Annotations
del bin\Debug\*.nupkg

dotnet build
dotnet pack

dotnet nuget push bin\Debug\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package

cd ..\..

:: ---------------------------------------------------------
:: Spark.NSwag.Generation
:: ---------------------------------------------------------

cd src\NSwag.Generation
del bin\Debug\*.nupkg

dotnet build
dotnet pack

dotnet nuget push bin\Debug\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package

cd ..\..

:: ---------------------------------------------------------
:: Spark.NSwag.Generation.WebApi
:: ---------------------------------------------------------

cd src\NSwag.Generation.WebApi
del bin\Debug\*.nupkg

dotnet build
dotnet pack

dotnet nuget push bin\Debug\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package

cd ..\..

:: ---------------------------------------------------------
:: Spark.NSwag.AspNet.Owin
:: ---------------------------------------------------------

cd src\NSwag.AspNet.Owin
del bin\Debug\*.nupkg

dotnet build
dotnet pack

dotnet nuget push bin\Debug\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package

cd ..\..

