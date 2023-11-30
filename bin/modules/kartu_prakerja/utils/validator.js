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
const isValidParamGetOneKartuPrakerja = async (payload) => {
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

const isValidParamGetAllKartuPrakerja = async (payload) => {
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

const isValidParamPostOneKartuPrakerja = async (payload) => {
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

const isValidParamUpdateOneKartuPrakerja = async (payload) => {
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
    isValidParamPostOneKartuPrakerja: isValidParamPostOneKartuPrakerja,
    isValidParamGetOneKartuPrakerja: isValidParamGetOneKartuPrakerja,
    isValidParamGetAllKartuPrakerja: isValidParamGetAllKartuPrakerja,
    isValidParamUpdateOneKartuPrakerja:isValidParamUpdateOneKartuPrakerja

}