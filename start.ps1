Write-Host "Starting Healthcare AI Assistant..."

docker compose up -d

Start-Sleep -Seconds 5

Start-Process "http://localhost:3000"

Write-Host "Healthcare AI Assistant is running!"