'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Rating = require('./domain');

const getAllRating = async (queryParam) => {
    const getData = async (queryParam) => {
        const rating = new Rating(queryParam);
        const result = await rating.viewAllRating();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneRating = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const rating = new Rating(queryParam);
        const result = await rating.viewOneRating();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllRating,
    getOneRating
}