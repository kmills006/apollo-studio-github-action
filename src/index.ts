import { gql, ApolloServer } from 'apollo-server';

interface Movie {
  name: string;
  year: number;
}

const typeDefs = gql`
  type Movie {
    name: String!
    year: Int!
  }

  type Query {
    movies: [Movie]
  }
`;

const resolvers = {
  Query: {
    movies: (): Movie[] => ([
      { name: 'Jurassic Park', year: 1993 },
      { name: 'The Lost World', year: 1997 },
      { name: 'Jurassic Park III', year: 2001 },
      { name: 'Jurassic World', year: 2015 },
      { name: 'Jurassic World: Fallen Kingdom', year: 2018 },
    ]),
  },
};

const server = new ApolloServer({
  resolvers,
  typeDefs,
});

server.listen({ port: 3000 }, () => {
  console.log('🦖 Apollo Server running at port: 3000');
});
