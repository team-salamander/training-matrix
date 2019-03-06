// Fill in details per your system requirements

const config = {
  database: {
      host: '127.0.0.1',
      user: 'dbUser',
      password: 'dbPass',
      database: 'dbName',
    },
  urlPathBase: '/classification', // Path to prefix client requests on (needed for reverse proxy setup)
  port: 9001
};

module.exports = config;
