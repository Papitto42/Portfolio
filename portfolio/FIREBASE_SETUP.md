# Firebase Realtime Database Setup

## Important: Enable Realtime Database

The admin dashboard requires Firebase Realtime Database to be enabled. Follow these steps:

1. Go to [Firebase Console](https://console.firebase.google.com/project/appiahelliotrichard)
2. Click on "Realtime Database" in the left sidebar
3. Click "Create Database"
4. Choose a location (e.g., `us-central1`)
5. Start in **test mode** (for now - you can secure it later)
6. Click "Enable"

## Database Rules (Optional - for production)

For production, update the rules in Firebase Console > Realtime Database > Rules:

```json
{
  "rules": {
    "visitors": {
      ".write": true,
      ".read": false
    },
    "analytics": {
      ".write": true,
      ".read": false
    }
  }
}
```

**Note:** The admin dashboard reads from the database, so you may want to allow read access for authenticated users only in production.

## What Gets Stored

- **visitors/**: Individual visitor data (page views, session time, scroll depth, etc.)
- **analytics/**: Aggregated statistics (total page views, total sessions)

The admin dashboard will show analytics from ALL visitors once the database is enabled.

