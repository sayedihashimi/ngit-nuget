# This will build the .nupkg for ngit-nuget
# nuget.exe must be on the path for this command to work


function Get-ScriptDirectory
{
    $Invocation = (Get-Variable MyInvocation -Scope 1).Value
    Split-Path $Invocation.MyCommand.Path
}

$pathToNuspec = Join-Path (Get-ScriptDirectory) src\Package.nuspec

nuget pack $pathToNuspec
