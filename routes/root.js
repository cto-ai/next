'use strict'

module.exports = async function (fastify, opts) {
  fastify.get('/v1/', async function (request, reply) {
    return { root: true }
  })
}
