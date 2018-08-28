$PackageName=nuget.exe list Microsoft.OpenPublishing.LogCodeService.LogCodeToCosmosDB  -Source https://www.myget.org/F/op-dev/api/v3/index.json -NonInteractive -PreRelease
$PackageName=$PackageName.Replace(" ", ".")

echo "Install LogCodeToCosmosDB"
nuget.exe install Microsoft.OpenPublishing.LogCodeService.LogCodeToCosmosDB  -Source https://www.myget.org/F/op-dev/api/v3/index.json -NonInteractive -PreRelease

$ToolName=[string]::Format("{0}\{1}\lib\netcoreapp2.1\Microsoft.OpenPublishing.LogCodeService.LogCodeToCosmosDB.exe", (Get-Location).Path, $PackageName)

echo "Upload LogCodes to CosmosDB"
iex "& $ToolName -f $(FolderPath) -e $(Endpoint) -a $(Authorization) -d $(DatabaseId) -c $(CollectionId)"