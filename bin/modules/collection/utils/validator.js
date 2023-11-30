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
const isValidParamGetOneCollection = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.name] = {length: {minimum: 5}};
    constraints[payload.type] = {length: {minimum: 4}};
    values[payload.name] = payload.name;
    values[payload.type] = payload.type;
    values[payload.numOrder] = payload.numOrder;

    return await validateConstraints(values,constraints);
}

const isValidParamGetAllCollection = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.name] = {length: {minimum: 5}};
    constraints[payload.type] = {length: {minimum: 4}};
    values[payload.name] = payload.name;
    values[payload.type] = payload.type;
    values[payload.numOrder] = payload.numOrder;
    return await validateConstraints(values,constraints);
}

const isValidParamPostOneCollection = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.name] = {length: {minimum: 5}};
    constraints[payload.type] = {length: {minimum: 4}};
    values[payload.name] = payload.name;
    values[payload.type] = payload.type;
    values[payload.numOrder] = payload.numOrder;
    return await validateConstraints(values,constraints);
}

const isValidParamUpdateOneCollection = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.name] = {length: {minimum: 5}};
    constraints[payload.type] = {length: {minimum: 4}};
    values[payload.name] = payload.name;
    values[payload.type] = payload.type;
    values[payload.numOrder] = payload.numOrder;
    return await validateConstraints(values,constraints);
}


module.exports = {
    isValidParamPostOneCollection: isValidParamPostOneCollection,
    isValidParamGetOneCollection: isValidParamGetOneCollection,
    isValidParamGetAllCollection: isValidParamGetAllCollection,
    isValidParamUpdateOneCollection:isValidParamUpdateOneCollection

}