'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Collection = require('./domain');

const getAllCollection = async (queryParam) => {
    const getData = async (queryParam) => {
        const collection = new Collection(queryParam);
        const result = await collection.viewAllCollection();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneCollection = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const collection = new Collection(queryParam);
        const result = await collection.viewOneCollection();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllCollection,
    getOneCollection
}