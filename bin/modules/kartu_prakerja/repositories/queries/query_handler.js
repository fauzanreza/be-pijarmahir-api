'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const KartuPrakerja = require('./domain');

const getAllKartuPrakerja = async (queryParam) => {
    const getData = async (queryParam) => {
        const kartu_prakerja = new KartuPrakerja(queryParam);
        const result = await kartu_prakerja.viewAllKartuPrakerja();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneKartuPrakerja = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const kartu_prakerja = new KartuPrakerja(queryParam);
        const result = await kartu_prakerja.viewOneKartuPrakerja();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllKartuPrakerja,
    getOneKartuPrakerja
}