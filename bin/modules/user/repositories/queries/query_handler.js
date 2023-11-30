'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const User = require('./domain');

const getAllUser = async (queryParam) => {
    const getData = async (queryParam) => {
        const user = new User(queryParam);
        const result = await user.viewAllUser();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneUser = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const user = new User(queryParam);
        const result = await user.viewOneUser();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllUser,
    getOneUser
}