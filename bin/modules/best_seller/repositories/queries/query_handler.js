'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const BestSeller = require('./domain');

const getAllBestSeller = async (queryParam) => {
    const getData = async (queryParam) => {
        const best_seller = new BestSeller(queryParam);
        const result = await best_seller.viewAllBestSeller();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneBestSeller = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const best_seller = new BestSeller(queryParam);
        const result = await best_seller.viewOneBestSeller();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllBestSeller,
    getOneBestSeller
}