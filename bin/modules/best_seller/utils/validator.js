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
const isValidParamGetOneBestSeller = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.fullname] = {length: {minimum: 5}};
    constraints[payload.teacher] = {length: {minimum: 4}};
    values[payload.course_Id] = payload.course_Id;
    values[payload.price] = payload.price;
    values[payload.fullname] = payload.fullname;
    values[payload.thumbnail] = payload.thumbnail;
    values[payload.rating] = payload.rating;
    values[payload.totalRater] = payload.totalRater;
    values[payload.teacher] = payload.teacher;
    values[payload.category_id] = payload.category_id;

    return await validateConstraints(values,constraints);
}

const isValidParamGetAllBestSeller = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.fullname] = {length: {minimum: 5}};
    constraints[payload.teacher] = {length: {minimum: 4}};
    values[payload.course_Id] = payload.course_Id;
    values[payload.price] = payload.price;
    values[payload.fullname] = payload.fullname;
    values[payload.thumbnail] = payload.thumbnail;
    values[payload.rating] = payload.rating;
    values[payload.totalRater] = payload.totalRater;
    values[payload.teacher] = payload.teacher;
    values[payload.category_id] = payload.category_id;
    return await validateConstraints(values,constraints);
}

const isValidParamPostOneBestSeller = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.fullname] = {length: {minimum: 5}};
    constraints[payload.teacher] = {length: {minimum: 4}};
    values[payload.course_Id] = payload.course_Id;
    values[payload.price] = payload.price;
    values[payload.fullname] = payload.fullname;
    values[payload.thumbnail] = payload.thumbnail;
    values[payload.rating] = payload.rating;
    values[payload.totalRater] = payload.totalRater;
    values[payload.teacher] = payload.teacher;
    values[payload.category_id] = payload.category_id;
    return await validateConstraints(values,constraints);
}

const isValidParamUpdateOneBestSeller = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.fullname] = {length: {minimum: 5}};
    constraints[payload.teacher] = {length: {minimum: 4}};
    values[payload.course_Id] = payload.course_Id;
    values[payload.price] = payload.price;
    values[payload.fullname] = payload.fullname;
    values[payload.thumbnail] = payload.thumbnail;
    values[payload.rating] = payload.rating;
    values[payload.totalRater] = payload.totalRater;
    values[payload.teacher] = payload.teacher;
    values[payload.category_id] = payload.category_id;

    return await validateConstraints(values,constraints);
}


module.exports = {
    isValidParamPostOneBestSeller: isValidParamPostOneBestSeller,
    isValidParamGetOneBestSeller: isValidParamGetOneBestSeller,
    isValidParamGetAllBestSeller: isValidParamGetAllBestSeller,
    isValidParamUpdateOneBestSeller:isValidParamUpdateOneBestSeller

}