'use strict';

const validate = require("validate.js");
const wrapper = require('../../../helpers/utils/wrapper');

const validateConstraints = async (values,constraints) => {
    if(validate(values,constraints)){
        return wrapper.error('Bad Request',validate(values,constraints),400);
    }else{
        return wrapper.data(true);
    }
}

const isValidParamGetOneCategory = async (payload) => {
    let constraints = {};
    let values = {};
    values[payload.categoryname] = payload.categoryname;
    values[payload.description] = payload.description;

    return await validateConstraints(values,constraints);
}

const isValidParamGetAllCategory = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.categoryname] = {length: {minimum: 5}};
    values[payload.categoryname] = payload.categoryname;
    values[payload.description] = payload.description;
    return await validateConstraints(values,constraints);
}

const isValidParamPostOneCategory = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.categoryname] = {length: {minimum: 5}};
    values[payload.categoryname] = payload.categoryname;
    values[payload.description] = payload.description;
    return await validateConstraints(values,constraints);
}

const isValidParamUpdateOneCategory = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.categoryname] = {length: {minimum: 5}};
    values[payload.categoryname] = payload.categoryname;
    values[payload.description] = payload.description;
    return await validateConstraints(values,constraints);
}


module.exports = {
    isValidParamPostOneCategory: isValidParamPostOneCategory,
    isValidParamGetOneCategory: isValidParamGetOneCategory,
    isValidParamGetAllCategory: isValidParamGetAllCategory,
    isValidParamUpdateOneCategory:isValidParamUpdateOneCategory

}