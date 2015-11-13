::
:: Microsoft Azure SDK for Net - Generate library code
:: Copyright (C) Microsoft Corporation. All Rights Reserved.
::
 
set autoRestVersion=0.13.0-Nightly20151102
set specUrl="https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-scheduler/2014-08-01-preview/swagger/scheduler.json"
set source=-Source https://www.myget.org/F/autorest/api/v2

set repoRoot=%~dp0..\..\..\..
set autoRestExe=%repoRoot%\packages\autorest.%autoRestVersion%\tools\AutoRest.exe
set generateFolder=%~dp0Generated

%repoRoot%\tools\nuget.exe install autorest %source% -Version %autoRestVersion% -o %repoRoot%\packages

if exist %generateFolder% rd /S /Q  %generateFolder%
%autoRestExe% -Modeler Swagger -CodeGenerator Azure.CSharp -Namespace Microsoft.Azure.Management.Scheduler -Input %specUrl% -outputDirectory %generateFolder% -Header NONE