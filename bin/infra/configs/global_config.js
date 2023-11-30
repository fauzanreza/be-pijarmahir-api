'use strict';

const nconf = require('nconf');

const getAuthAPI = () => {
    return nconf.get('AUTH_API_BASIC');
}

const getSentryDSN = () => {
    return nconf.get('DSN_SENTRY_URL');
}

const getDevelopmentDB = () => {
    return nconf.get('DEVELOPMENT_MONGO_DATABASE_URL');
}

const getDevelopmentDBMySQL = () => {
    return nconf.get('DEVELOPMENT_MYSQL_DATABASE_CONFIG');
}

const getMockupTopic = () => {
    return nconf.get('MOCKUP_TOPIC');
}

const getAWSCredential = () => {
    return nconf.get('AWS_CREDENTIAL');
}

const getPublicKey = () => {
    return nconf.get('PUBLIC_KEY_PATH');
}

const getPrivateKey = () => {
    return nconf.get('PRIVATE_KEY_PATH');
}

module.exports = {
    getAuthAPI: getAuthAPI,
    getSentryDSN: getSentryDSN,
    getDevelopmentDB: getDevelopmentDB,
    getDevelopmentDBMySQL: getDevelopmentDBMySQL,
    getMockupTopic: getMockupTopic,
    getAWSCredential: getAWSCredential,
    getPublicKey: getPublicKey,
    getPrivateKey: getPrivateKey
}