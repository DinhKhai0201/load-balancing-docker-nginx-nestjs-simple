module.exports = {
    apps: [{
      name: 'my-loadbalancer',
      script: 'dist/main.js',
      instances: 'max',
      autorestart: true,
      watch: false,
      max_memory_restart: '1G',
    }]
  };
  