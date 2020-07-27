const adController = require('../controllers/adControlls')
const apiRoutes = [
  {
    method: 'GET',
    url: '/:page',
    handler: adController.getAds,

  },
  {
    method: 'GET',
    url: '/ad/:id',
    handler: adController.getSingleAd
  },

  {
    method: 'POST',
    url: '/ad',
    handler: adController.addAd,
    attachValidation: true,
   	schema:{
   		body:{
   			type: 'object',
   			properties: {
   				title: {type: 'string'},
   				desc: {type: 'string'},
   				pic: {
   					type: 'array',
   					maxItems: 3},
   			},
   			required: ['title', 'desc', 'pic']
   		},
   	}
	}
]



module.exports = apiRoutes;