function Check-ChocolateyInstallation {
    try {
        $chocoVersion = choco --version
        Write-Host "✅ Chocolatey está instalado! Versão: $chocoVersion" -ForegroundColor Green
        return $true
    }
    catch {
        Write-Host "❌ Chocolatey NÃO está instalado!" -ForegroundColor Red
        return $false
    }
}

# Executar verificação
Test-ChocolateyInstallation
