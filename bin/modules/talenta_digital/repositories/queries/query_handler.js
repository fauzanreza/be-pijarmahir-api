'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const TalentaDigital = require('./domain');

const getAllTalentaDigital = async (queryParam) => {
    const getData = async (queryParam) => {
        const talenta_digital = new TalentaDigital(queryParam);
        const result = await talenta_digital.viewAllTalentaDigital();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneTalentaDigital = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const talenta_digital = new TalentaDigital(queryParam);
        const result = await talenta_digital.viewOneTalentaDigital();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllTalentaDigital,
    getOneTalentaDigital
}