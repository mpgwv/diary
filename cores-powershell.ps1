function Show-ColorMenu {
    do {
        Clear-Host
        Write-Host "=== MENU DE CORES PowerShell ===" -ForegroundColor Cyan
        Write-Host "[1]  Verde" -ForegroundColor Green
        Write-Host "[2]  Vermelho" -ForegroundColor Red  
        Write-Host "[3]  Amarelo" -ForegroundColor Yellow
        Write-Host "[4]  Azul" -ForegroundColor Blue
        Write-Host "[5]  Ciano" -ForegroundColor Cyan
        Write-Host "[6]  Magenta" -ForegroundColor Magenta
        Write-Host "[7]  Branco" -ForegroundColor White
        Write-Host "[8]  Testar todas as cores"
        Write-Host "[0]  Sair"
        Write-Host ""
        
        $opcao = Read-Host "Escolha uma opcao"
        
        switch ($opcao) {
            "1" { Write-Host "Texto VERDE selecionado!" -ForegroundColor Green }
            "2" { Write-Host "Texto VERMELHO selecionado!" -ForegroundColor Red }
            "3" { Write-Host "Texto AMARELO selecionado!" -ForegroundColor Yellow }
            "4" { Write-Host "Texto AZUL selecionado!" -ForegroundColor Blue }
            "5" { Write-Host "Texto CIANO selecionado!" -ForegroundColor Cyan }
            "6" { Write-Host "Texto MAGENTA selecionado!" -ForegroundColor Magenta }
            "7" { Write-Host "Texto BRANCO selecionado!" -ForegroundColor White }
            "8" { Test-TodasCores }
            "0" { return }
            default { Write-Host "Opcao invalida!" -ForegroundColor Red }
        }
        
        if ($opcao -ne "0") {
            Write-Host ""
            Read-Host "Pressione Enter para continuar"
        }
    } while ($opcao -ne "0")
}

function Test-TodasCores {
    $cores = "Black", "DarkBlue", "DarkGreen", "DarkCyan", "DarkRed", "DarkMagenta", "DarkYellow", "Gray", "DarkGray", "Blue", "Green", "Cyan", "Red", "Magenta", "Yellow", "White"
    
    foreach ($cor in $cores) {
        Write-Host "Cor: $cor - Texto de exemplo" -ForegroundColor $cor
        Start-Sleep -Milliseconds 500
    }
}

# Executar menu
Show-ColorMenu
