'use strict';

const restify = require('restify');
const serveStatic = require('serve-static-restify');
const project = require('../../package.json');
const basicAuth = require('../auth/basic_auth_helper');
const wrapper = require('../helpers/utils/wrapper');
const corsMiddleware = require('restify-cors-middleware')
const mockupHandler = require('../modules/mockup/handlers/api_handler');
const categoryHandler = require('../modules/category/handlers/api_handler');
const courseHandler = require('../modules/course/handlers/api_handler');
const ratingHandler = require('../modules/rating/handlers/api_handler');
const userHandler = require('../modules/user/handlers/api_handler');
const collectionHandler = require('../modules/collection/handlers/api_handler');
const kartu_prakerjaHandler = require('../modules/kartu_prakerja/handlers/api_handler');
const flash_saleHandler = require('../modules/flash_sale/handlers/api_handler');
const mahir_prakerjaHandler = require('../modules/mahir_prakerja/handlers/api_handler');
const best_sellerHandler = require('../modules/best_seller/handlers/api_handler');
const talenta_digitalHandler = require('../modules/talenta_digital/handlers/api_handler');
const pilihan_terbaikHandler = require('../modules/pilihan_terbaik/handlers/api_handler');

let crossOrigin = (req,res,next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    if ('OPTIONS' == req.method) {
      res.send(200);
    }
    return next();
}

const cors = corsMiddleware({
    preflightMaxAge: 5, //Optional
    origins: ['*'],
    allowHeaders: ['Origin, X-Requested-With, Content-Type, Accept, OPTIONS'],
    exposeHeaders: ['OPTIONS']
})

let AppServer = function(){
    this.server = restify.createServer({
        name: project.name + '-server',
        version: project.version
    });

    this.server.serverKey = '';
    this.server.pre(cors.preflight);
    this.server.use(cors.actual);
    this.server.use(restify.plugins.acceptParser(this.server.acceptable));
    this.server.use(restify.plugins.queryParser());
    this.server.use(restify.plugins.bodyParser());
    this.server.use(restify.plugins.authorizationParser());

    //required for basic auth
    this.server.use(basicAuth.init());
    this.server.use(crossOrigin);

    //anonymous can access the end point, place code bellow
    this.server.get('/', (req, res, next) => {
        wrapper.response(res,`success`,wrapper.data(`Index`),`This service is running properly`);
    });

    //authenticated client can access the end point, place code bellow
    this.server.get('/api/v1/mockups/:projectName/:domainName/:apiName', basicAuth.isAuthenticated, mockupHandler.getOneMockup);
    this.server.get('/api/v1/mockups/mysql/:projectName/:domainName/:apiName', basicAuth.isAuthenticated, mockupHandler.getOneMockupMySQL);
    this.server.post('/api/v1/mockups/', basicAuth.isAuthenticated, mockupHandler.postOneMockup);

        //User
    this.server.post('/api/v1/user/', userHandler.postOneUser);
    this.server.get('/api/v1/user/', userHandler.getAllUser);
    this.server.get('/api/v1/user/:id', userHandler.getOneUser);
    this.server.patch('/api/v1/user/:id', userHandler.patchOneUser);

    //Category
    this.server.post('/api/v1/category/', categoryHandler.postOneCategory);
    this.server.get('/api/v1/category/', categoryHandler.getAllCategory);
    this.server.get('/api/v1/category/:id', categoryHandler.getOneCategory);
    this.server.patch('/api/v1/category/:id', categoryHandler.patchOneCategory);

    //Course
    this.server.post('/api/v1/course/', courseHandler.postOneCourse);
    this.server.get('/api/v1/course/', courseHandler.getAllCourse);
    this.server.get('/api/v1/course/:id', courseHandler.getOneCourse);
    this.server.patch('/api/v1/course/:id', courseHandler.patchOneCourse);

    //Rating
    this.server.post('/api/v1/course/rating/', ratingHandler.postOneRating);
    this.server.get('/api/v1/course/rating/', ratingHandler.getAllRating);
    this.server.get('/api/v1/course/rating/:id', ratingHandler.getOneRating);
    this.server.patch('/api/v1/course/rating/:id', ratingHandler.patchOneRating);

    //Collection
    this.server.post('/api/v1/collection/', collectionHandler.postOneCollection);
    this.server.get('/api/v1/collection/', collectionHandler.getAllCollection);
    this.server.get('/api/v1/collection/:id', collectionHandler.getOneCollection);
    this.server.patch('/api/v1/collection/:id', collectionHandler.patchOneCollection);

    //KartuPrakerja
    this.server.post('/api/v1/collection/kartu_prakerja/', kartu_prakerjaHandler.postOneKartuPrakerja);
    this.server.get('/api/v1/collection/kartu_prakerja/', kartu_prakerjaHandler.getAllKartuPrakerja);
    this.server.get('/api/v1/collection/kartu_prakerja/:id', kartu_prakerjaHandler.getOneKartuPrakerja);
    this.server.patch('/api/v1/collection/kartu_prakerja/:id', kartu_prakerjaHandler.patchOneKartuPrakerja);

    //FlashSale
    this.server.post('/api/v1/collection/flash_sale/', flash_saleHandler.postOneFlashSale);
    this.server.get('/api/v1/collection/flash_sale/', flash_saleHandler.getAllFlashSale);
    this.server.get('/api/v1/collection/flash_sale/:id', flash_saleHandler.getOneFlashSale);
    this.server.patch('/api/v1/collection/flash_sale/:id', flash_saleHandler.patchOneFlashSale);

    //MahirPrakerja
    this.server.post('/api/v1/collection/mahir_prakerja/', mahir_prakerjaHandler.postOneMahirPrakerja);
    this.server.get('/api/v1/collection/mahir_prakerja/', mahir_prakerjaHandler.getAllMahirPrakerja);
    this.server.get('/api/v1/collection/mahir_prakerja/:id', mahir_prakerjaHandler.getOneMahirPrakerja);
    this.server.patch('/api/v1/collection/mahir_prakerja/:id', mahir_prakerjaHandler.patchOneMahirPrakerja);

    //BestSeller
    this.server.post('/api/v1/collection/best_seller/', best_sellerHandler.postOneBestSeller);
    this.server.get('/api/v1/collection/best_seller/', best_sellerHandler.getAllBestSeller);
    this.server.get('/api/v1/collection/best_seller/:id', best_sellerHandler.getOneBestSeller);
    this.server.patch('/api/v1/collection/best_seller/:id', best_sellerHandler.patchOneBestSeller);

    //TalentaDigital
    this.server.post('/api/v1/collection/talenta_digital/', talenta_digitalHandler.postOneTalentaDigital);
    this.server.get('/api/v1/collection/talenta_digital/', talenta_digitalHandler.getAllTalentaDigital);
    this.server.get('/api/v1/collection/talenta_digital/:id', talenta_digitalHandler.getOneTalentaDigital);
    this.server.patch('/api/v1/collection/talenta_digital/:id', talenta_digitalHandler.patchOneTalentaDigital);

    //PilihanTerbaik
    this.server.post('/api/v1/collection/pilihan_terbaik/', pilihan_terbaikHandler.postOnePilihanTerbaik);
    this.server.get('/api/v1/collection/pilihan_terbaik/', pilihan_terbaikHandler.getAllPilihanTerbaik);
    this.server.get('/api/v1/collection/pilihan_terbaik/:id', pilihan_terbaikHandler.getOnePilihanTerbaik);
    this.server.patch('/api/v1/collection/pilihan_terbaik/:id', pilihan_terbaikHandler.patchOnePilihanTerbaik);

}
 
module.exports = AppServer;