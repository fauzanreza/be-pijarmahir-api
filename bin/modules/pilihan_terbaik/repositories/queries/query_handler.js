'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const PilihanTerbaik = require('./domain');

const getAllPilihanTerbaik = async (queryParam) => {
    const getData = async (queryParam) => {
        const pilihan_terbaik = new PilihanTerbaik(queryParam);
        const result = await pilihan_terbaik.viewAllPilihanTerbaik();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOnePilihanTerbaik = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const pilihan_terbaik = new PilihanTerbaik(queryParam);
        const result = await pilihan_terbaik.viewOnePilihanTerbaik();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllPilihanTerbaik,
    getOnePilihanTerbaik
}