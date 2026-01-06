#!/bin/bash

echo "🚀 Deploying to Firebase Hosting..."
echo ""

# Check if logged in
if ! firebase projects:list &>/dev/null; then
    echo "❌ Not logged in. Please run: firebase login"
    echo "   Then run this script again."
    exit 1
fi

echo "✅ Logged in to Firebase"
echo ""

# Set the project
echo "📋 Setting project to appiahelliotrichard..."
firebase use appiahelliotrichard

echo ""
echo "📦 Deploying to Firebase Hosting..."
firebase deploy --only hosting

echo ""
echo "✅ Deployment complete!"
echo "Your site should be live at: https://appiahelliotrichard.web.app"


