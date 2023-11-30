'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const MahirPrakerja = require('./domain');

const getAllMahirPrakerja = async (queryParam) => {
    const getData = async (queryParam) => {
        const mahir_prakerja = new MahirPrakerja(queryParam);
        const result = await mahir_prakerja.viewAllMahirPrakerja();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneMahirPrakerja = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const mahir_prakerja = new MahirPrakerja(queryParam);
        const result = await mahir_prakerja.viewOneMahirPrakerja();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllMahirPrakerja,
    getOneMahirPrakerja
}