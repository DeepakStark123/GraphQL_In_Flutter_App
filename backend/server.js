const express = require('express');
const cors = require('cors');
const { ApolloServer } = require('apollo-server-express');
const { makeExecutableSchema } = require('@graphql-tools/schema');
const fs = require('fs');
const resolvers = require('./resolvers');
const db = require('./db');

const port = process.env.PORT || 9000;
const app = express();

// Read GraphQL schema
const typeDefs = fs.readFileSync('./schema.graphql', { encoding: 'utf-8' });

// Create executable schema
const schema = makeExecutableSchema({
   typeDefs,
   resolvers,
});

// Middleware
// app.use(cors());
app.use(cors({
   origin: ['http://10.0.2.2:9000', 'http://localhost:3000', 'https://studio.apollographql.com'], // Add specific origins
   credentials: true,
}));

 

// Set up Apollo Server
const server = new ApolloServer({
   schema,
   context: () => ({ db }),
});

// Start Apollo Server
(async () => {
   await server.start();
   server.applyMiddleware({ app, path: '/graphql' });

   app.listen(port, () => {
      console.log(`Server started on http://localhost:${port}/graphql`);
   });
})();
