#!/bin/bash

echo "🚀 Firebase Deployment Script"
echo "=============================="
echo ""

# Check if logged in
if ! firebase projects:list &>/dev/null; then
    echo "❌ Not logged in to Firebase. Please run: firebase login"
    exit 1
fi

echo "✅ Logged in to Firebase"
echo ""

# Check if project is initialized
if [ ! -f ".firebaserc" ] || grep -q "your-project-id" .firebaserc; then
    echo "📋 Setting up Firebase project..."
    echo ""
    echo "Choose an option:"
    echo "1. Use an existing Firebase project"
    echo "2. Create a new Firebase project"
    echo ""
    read -p "Enter choice (1 or 2): " choice
    
    if [ "$choice" == "1" ]; then
        firebase use --add
    else
        firebase projects:create
        firebase use --add
    fi
fi

echo ""
echo "📦 Deploying to Firebase Hosting..."
firebase deploy --only hosting

echo ""
echo "✅ Deployment complete!"
echo "Your site should be live at the URL shown above."


