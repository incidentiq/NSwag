
:: set /p ApiKey=Enter the API key required for publishing to nuget.iqapps.io: 

:: ---------------------------------------------------------
:: Spark.NSwag.Core
:: ---------------------------------------------------------

cd src\NSwag.Core
del bin\Release\*.nupkg

dotnet build -c Release
dotnet pack

dotnet nuget push bin\Release\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package
dotnet nuget push bin\Release\*.nupkg --source iiq-local-artifacts --api-key az --skip-duplicate --interactive

cd ..\..

:: ---------------------------------------------------------
:: Spark.NSwag.Annotations
:: ---------------------------------------------------------

cd src\NSwag.Annotations
del bin\Release\*.nupkg

dotnet build -c Release
dotnet pack

dotnet nuget push bin\Release\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package
dotnet nuget push bin\Release\*.nupkg --source iiq-local-artifacts --api-key az --skip-duplicate --interactive

cd ..\..

:: ---------------------------------------------------------
:: Spark.NSwag.Generation
:: ---------------------------------------------------------

cd src\NSwag.Generation
del bin\Release\*.nupkg

dotnet build -c Release
dotnet pack

dotnet nuget push bin\Release\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package
dotnet nuget push bin\Release\*.nupkg --source iiq-local-artifacts --api-key az --skip-duplicate --interactive

cd ..\..

:: ---------------------------------------------------------
:: Spark.NSwag.Generation.WebApi
:: ---------------------------------------------------------

cd src\NSwag.Generation.WebApi
del bin\Release\*.nupkg

dotnet build -c Release
dotnet pack

dotnet nuget push bin\Release\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package
dotnet nuget push bin\Release\*.nupkg --source iiq-local-artifacts --api-key az --skip-duplicate --interactive

cd ..\..

:: ---------------------------------------------------------
:: Spark.NSwag.AspNet.Owin
:: ---------------------------------------------------------

cd src\NSwag.AspNet.Owin
del bin\Release\*.nupkg

dotnet build -c Release
dotnet pack

dotnet nuget push bin\Release\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package
dotnet nuget push bin\Release\*.nupkg --source iiq-local-artifacts --api-key az --skip-duplicate --interactive

cd ..\..

