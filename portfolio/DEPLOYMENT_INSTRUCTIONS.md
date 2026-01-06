# Firebase Hosting Deployment Instructions

## Quick Start

Your Firebase project is already configured! Follow these steps:

### Step 1: Login to Firebase
Open your terminal and run:
```bash
cd /Users/papitto/Desktop/portfolio
firebase login
```
This will open your browser for authentication. Sign in with your Google account.

### Step 2: Verify Project Connection
After logging in, verify your project is connected:
```bash
firebase use appiahelliotrichard
```

### Step 3: Deploy Your Website
Once logged in, deploy your site:
```bash
firebase deploy --only hosting
```

### Step 4: Access Your Live Site
After deployment, Firebase will provide you with URLs:
- `https://appiahelliotrichard.web.app`
- `https://appiahelliotrichard.firebaseapp.com`

## What's Already Configured

✅ Firebase project ID: `appiahelliotrichard`  
✅ Firebase Analytics integrated  
✅ Hosting configuration (`firebase.json`)  
✅ Project configuration (`.firebaserc`)  

## Future Deployments

After the initial setup, you can simply run:
```bash
firebase deploy --only hosting
```

## Troubleshooting

If you get authentication errors:
- Make sure you've run `firebase login`
- Verify you have access to the `appiahelliotrichard` project

If deployment fails:
- Check that all files are in the portfolio directory
- Verify `firebase.json` exists and is valid


