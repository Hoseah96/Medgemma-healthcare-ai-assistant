Write-Host "Healthcare AI Assistant Setup"

# Check Ollama
if (!(Get-Command ollama -ErrorAction SilentlyContinue)) {
    Write-Host "Please install Ollama first."
    exit 1
}

# Check Docker
if (!(Get-Command docker -ErrorAction SilentlyContinue)) {
    Write-Host "Please install Docker Desktop first."
    exit 1
}

# Download MedGemma
ollama pull medgemma

# Start Open WebUI
docker compose up -d

Write-Host "Setup completed!"
Write-Host "Open http://localhost:3000"