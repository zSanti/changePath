## Pedir que el usuario teclee la ruta
$SetPathFolder = "D:\Datos\perfil" ## Por defecto pongo para probar si existe
##$SetPathFolder = Read-Host

## Verificando que la ruta tecleada exista
If (Test-Path $SetPathFolder) {
    Write-Host "${SetPathFolder} la ruta especificada existe. Saltando paso"
} Else {
    Write-Host "La carpeta ${SetPathFolder} no existe."
}

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

# Pregunta -> Si desea continuar o si desea cancelar la operación
If () {
    Switch ($Prompt) {
        Yes {

        }
        No {
            Break
        }
    }
}

## Si -> Mostrar las rutas cambiadas 102400

