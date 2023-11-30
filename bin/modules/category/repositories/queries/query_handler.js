'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Category = require('./domain');

const getAllCategory = async (queryParam) => {
    const getData = async (queryParam) => {
        const category = new Category(queryParam);
        const result = await category.viewAllCategory();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneCategory = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const category = new Category(queryParam);
        const result = await category.viewOneCategory();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllCategory,
    getOneCategory
}