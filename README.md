
# GraphQL App

A project demonstrating the integration of **GraphQL** with **Flutter** and **Node.js**.

## Overview

This project is organized into two main parts:
1. **Backend**: A Node.js-based GraphQL server for managing `students` and `colleges` data.
2. **Frontend**: A Flutter app to consume the GraphQL API and display the data.

---

## Folder Structure

```
GraphQL/
│
├── backend/      # Contains all Node.js backend files
│   ├── data/     # JSON files for students and colleges
│   ├── db.js     # Database setup using notarealdb
│   ├── resolvers.js # Resolver functions for GraphQL queries
│   ├── schema.graphql # GraphQL schema
│   ├── server.js # Node.js server setup
│   ├── package.json # Node.js dependencies
│
├── frontend/     # Contains all Flutter files for the app
│   ├── lib/      # Flutter app source code
│   ├── main.dart  # Flutter app root file
│   ├── pubspec.yaml # Flutter dependencies
│   ├── android/ios/... # Flutter platform-specific files
```

---

## Getting Started

### Prerequisites

1. Install **Node.js** and **npm** from [Node.js Official Site](https://nodejs.org/).
2. Install **Flutter SDK** from [Flutter Official Site](https://docs.flutter.dev/get-started/install).

---

## Backend (Node.js)

The backend is a GraphQL API built with Node.js.

### Steps to Run the Backend

1. Navigate to the `backend` folder:
   ```bash
   cd backend
   ```

2. Install the dependencies:
   ```bash
   npm install
   ```

3. Start the server:
   ```bash
   node server.js
   ```

4. Verify that the server is running:
   Open your browser or a GraphQL client and navigate to `http://localhost:9000/graphql`.

---

## Frontend (Flutter)

The frontend is a Flutter app that consumes the backend GraphQL API.

### Steps to Run the Frontend

1. Navigate to the `frontend` folder:
   ```bash
   cd frontend
   ```

2. Install the dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

   Make sure the backend server is running before starting the Flutter app.

4. Update the GraphQL API endpoint in `main.dart` if needed. The default endpoint is `http://localhost:9000/graphql`.

---

## Usage

- Start the **Node.js server** to enable the GraphQL API.
- Use the **Flutter app** to fetch and display `students` and `colleges` data.
- Modify the JSON files in the `backend/data/` folder, restart the server, and observe the updated data in the app.

---

## Notes

- Ensure both backend and frontend are running simultaneously for the app to work.
- If you are running the backend on a separate machine or emulator, update the GraphQL endpoint in the Flutter app.

---

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [GraphQL Documentation](https://graphql.org/learn/)
- [graphql_flutter Package](https://pub.dev/packages/graphql_flutter)
- [Node.js Official Site](https://nodejs.org/)

---

With this guide, you can run both the backend and frontend of the GraphQL app. Happy coding!
# GraphQLApp
