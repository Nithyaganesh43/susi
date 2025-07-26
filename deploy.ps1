# CampusLink Deployment Script
Write-Host "🚀 Starting CampusLink Deployment..." -ForegroundColor Green

# Deploy Client to Vercel
Write-Host "📱 Deploying Client to Vercel..." -ForegroundColor Yellow
cd client
if (Get-Command vercel -ErrorAction SilentlyContinue) {
    Write-Host "Vercel CLI found, deploying..." -ForegroundColor Green
    vercel --prod
} else {
    Write-Host "Vercel CLI not found. Please install it first:" -ForegroundColor Red
    Write-Host "npm install -g vercel" -ForegroundColor Cyan
    Write-Host "Then run: vercel login" -ForegroundColor Cyan
    Write-Host "Then run: vercel --prod" -ForegroundColor Cyan
}

# Deploy Server to Render
Write-Host "🔧 Server deployment instructions:" -ForegroundColor Yellow
Write-Host "1. Go to https://render.com" -ForegroundColor Cyan
Write-Host "2. Create new Web Service" -ForegroundColor Cyan
Write-Host "3. Connect your GitHub repo" -ForegroundColor Cyan
Write-Host "4. Set Root Directory to 'server'" -ForegroundColor Cyan
Write-Host "5. Set Build Command: npm install" -ForegroundColor Cyan
Write-Host "6. Set Start Command: npm start" -ForegroundColor Cyan
Write-Host "7. Configure environment variables" -ForegroundColor Cyan

Write-Host "✅ Deployment script completed!" -ForegroundColor Green 