## Pedir que el usuario teclee la ruta
$SetPathFolder = "D:\Datos\perfil" ## Teclea la ruta completa a donde quieres cambiar --> Por defecto pongo para probar si existe
##$SetPathFolder = Read-Host

## Verificando que la ruta tecleada exista
If (Test-Path $SetPathFolder) {
    Write-Host "${SetPathFolder} la ruta especificada existe. Saltando paso"
} Else {
    Write-Host "La carpeta ${SetPathFolder} no existe."
}

# Mostrar las carpetas que se van a definir con la nueva ruta en la segunda partición
$KnownFolders = @{
    Write-Host "Cambiarás las rutas de las siguientes carpeta por:"
    'SavedSearches' = '7d1d3a04-debb-4115-95cf-2f29da2920da';
    'Contacts' = '56784854-C6CB-462b-8169-88E350ACB882';
    'Downloads' = '374DE290-123F-4565-9164-39C4925E467B';
    'Documents' = 'FDD39AD0-238F-46AF-ADB4-6C85480369C7';
    'Desktop' = 'B4BFCC3A-DB2C-424C-B029-7FE99A87C641';
    'Favorites' = '1777F761-68AD-4D8A-87BD-30B759FA33DD';
    'OriginalImages' = '2C36C0AA-5812-4b87-BFD0-4CD0DFB19B39';
    'SavedGames' = '4C5C32FF-BB9D-43b0-B5B4-2D72E54EAAA4';
    'Music' = '4BD8D571-6D19-48D3-BE97-422220080E43';
    'Videos' = '18989B1D-99B5-455B-841C-AB7C74E4DDFC';
    'Links' = 'bfb9d5e0-c6a9-404c-b2b2-ae6db6af4968';
    '3DObjects' = '31C0DD25-9439-4F12-BF41-7FF4EDA38722';
}

# Pregunta -> Si desea continuar o si desea cancelar la operación
$Ask = 'Seleccione "Si" si quieres continuar la operación
        Seleccione "No" si quieres detener la operación.'

If () {
    Switch ($Prompt) {
        Yes {
            ##
            function Get-KnownFolderPath {
                Param (
                    [Parameter(Mandatory = $true)]
                    [ValidateSet('SavedSearches', 'Contacts', 'Downloads', 'Documents', 'Desktop', 'Favorites', 'OriginalImages', 'SavedGames', 'Music', 'Videos', 'Links')]
                    [string]$Folder
                )
            }

            $guid = $KnownFolders.$("$folder")



        }
        No {
            Break
        }
    }
}

## Si -> Mostrar las rutas cambiadas 102400



# Mostrar las carpetas que se van a definir con la nueva ruta en la segunda partición
$changeFolders = @{
    Write-Host "Cambiarás las rutas de las siguientes carpeta por:"
    'Searches' = '';
    'Contacts' = '';
    'Downloads' = '';
    'Documents' = '';
    'Desktop' = '';
    'Favorites' = '';
    'Images' = '';
    'Save Games' = '';
    'Music' = '';
    'Videos' = '';
    'Links' = '';
}




