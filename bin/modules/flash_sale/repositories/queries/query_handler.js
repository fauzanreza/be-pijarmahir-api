'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const FlashSale = require('./domain');

const getAllFlashSale = async (queryParam) => {
    const getData = async (queryParam) => {
        const flash_sale = new FlashSale(queryParam);
        const result = await flash_sale.viewAllFlashSale();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneFlashSale = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const flash_sale = new FlashSale(queryParam);
        const result = await flash_sale.viewOneFlashSale();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllFlashSale,
    getOneFlashSale
}