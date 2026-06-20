# Quick Deploy Script for moodyspritestudios.com
# Update the configuration below, then run: .\deploy-to-server.ps1

# ============================================
# CONFIGURATION - EDIT THESE VALUES
# ============================================
$SERVER_USER = "your-username"          # Your server SSH username
$SERVER_IP = "your-server-ip"            # Your server IP or domain
$SERVER_PATH = "/var/www/portfolio/"     # Path to your website on the server

# ============================================
# DEPLOYMENT SCRIPT
# ============================================

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "  Portfolio Deployment Tool" -ForegroundColor Cyan
Write-Host "  Target: moodyspritestudios.com" -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Cyan

# Check if files exist
$files = @("index.html", "styles.css")
$allFilesExist = $true

foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "✓ Found: $file" -ForegroundColor Green
    } else {
        Write-Host "✗ Missing: $file" -ForegroundColor Red
        $allFilesExist = $false
    }
}

if (-not $allFilesExist) {
    Write-Host "`nError: Some files are missing. Please run this script from your project directory." -ForegroundColor Red
    exit 1
}

Write-Host "`nDeploying files to server..." -ForegroundColor Yellow
Write-Host "Server: $SERVER_USER@$SERVER_IP" -ForegroundColor Gray
Write-Host "Path: $SERVER_PATH`n" -ForegroundColor Gray

# Deploy using SCP
try {
    scp index.html styles.css "${SERVER_USER}@${SERVER_IP}:${SERVER_PATH}"
    
    Write-Host "`n========================================" -ForegroundColor Green
    Write-Host "  ✓ Deployment Successful!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "`nNext steps:" -ForegroundColor Cyan
    Write-Host "1. Clear browser cache (Ctrl + Shift + R)" -ForegroundColor White
    Write-Host "2. Visit: https://moodyspritestudios.com" -ForegroundColor White
    Write-Host "3. Check that 'Education' link appears in navigation`n" -ForegroundColor White
    
} catch {
    Write-Host "`n✗ Deployment failed: $_" -ForegroundColor Red
    Write-Host "`nTroubleshooting:" -ForegroundColor Yellow
    Write-Host "- Verify SERVER_USER, SERVER_IP, and SERVER_PATH are correct" -ForegroundColor White
    Write-Host "- Ensure you have SSH access to the server" -ForegroundColor White
    Write-Host "- Check that scp/ssh is installed and in your PATH`n" -ForegroundColor White
    exit 1
}
