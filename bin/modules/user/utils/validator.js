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

const isValidParamGetOneUser = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.username] = {length: {minimum: 5}};
    constraints[payload.password] = {length: {minimum: 5}};
    values[payload.username] = payload.username;
    values[payload.password] = payload.password;
    values[payload.email] = payload.email;
    values[payload.no_tlp] = payload.no_tlp;
    values[payload.birthdate] = payload.birthdate;
    values[payload.gender] = payload.gender;

    return await validateConstraints(values,constraints);
}

const isValidParamGetAllUser = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.username] = {length: {minimum: 5}};
    constraints[payload.password] = {length: {minimum: 5}};
    values[payload.username] = payload.username;
    values[payload.password] = payload.password;
    values[payload.email] = payload.email;
    values[payload.no_tlp] = payload.no_tlp;
    values[payload.birthdate] = payload.birthdate;
    values[payload.gender] = payload.gender;
    return await validateConstraints(values,constraints);
}

const isValidParamPostOneUser = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.username] = {length: {minimum: 5}};
    constraints[payload.password] = {length: {minimum: 5}};
    values[payload.username] = payload.username;
    values[payload.password] = payload.password;
    values[payload.email] = payload.email;
    values[payload.no_tlp] = payload.no_tlp;
    values[payload.birthdate] = payload.birthdate;
    values[payload.gender] = payload.gender;
    return await validateConstraints(values,constraints);
}

const isValidParamUpdateOneUser = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.username] = {length: {minimum: 5}};
    constraints[payload.password] = {length: {minimum: 5}};
    values[payload.username] = payload.username;
    values[payload.password] = payload.password;
    values[payload.email] = payload.email;
    values[payload.no_tlp] = payload.no_tlp;
    values[payload.birthdate] = payload.birthdate;
    values[payload.gender] = payload.gender;
    return await validateConstraints(values,constraints);
}


module.exports = {
    isValidParamPostOneUser: isValidParamPostOneUser,
    isValidParamGetOneUser: isValidParamGetOneUser,
    isValidParamGetAllUser: isValidParamGetAllUser,
    isValidParamUpdateOneUser:isValidParamUpdateOneUser

}