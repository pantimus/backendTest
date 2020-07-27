const fastify = require('fastify')({
	//logger: true,
	ignoreTrailingSlash: true,

});

const urlCustom = fastify.register(require('fastify-url-data'));
fastify.register(require('fastify-cors'), { 
	origin: '*'
})
const config = require('./config/config');

const routes = require('./routes/index');
routes.forEach((route,index) => {
	fastify.route(route);
})


const PORT = process.env.PORT || config.PORT;

const start = async () => {
  try {
    await fastify.listen(PORT)
    fastify.log.info(`server listening on ${fastify.server.address().port}`)
  } catch (err) {
    fastify.log.error(err)
    process.exit(1)
  }
}
start();