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

const isValidParamGetOneRating = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.comment] = {length: {minimum: 5}};
    constraints[payload.isPrakerja] = {length: {minimum: 5}};
    constraints[payload.fullname] = {length: {minimum: 4}};
    values[payload.course_Id] = payload.course_Id;
    values[payload.comment] = payload.comment;
    values[payload.rating] = payload.rating;
    values[payload.user_Id] = payload.user_Id;
    values[payload.isPrakerja] = payload.isPrakerja;
    values[payload.fullname] = payload.fullname;

    return await validateConstraints(values,constraints);
}

const isValidParamGetAllRating = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.comment] = {length: {minimum: 5}};
    constraints[payload.isPrakerja] = {length: {minimum: 5}};
    constraints[payload.fullname] = {length: {minimum: 4}};
    values[payload.course_Id] = payload.course_Id;
    values[payload.comment] = payload.comment;
    values[payload.rating] = payload.rating;
    values[payload.user_Id] = payload.user_Id;
    values[payload.isPrakerja] = payload.isPrakerja;
    values[payload.fullname] = payload.fullname;
    return await validateConstraints(values,constraints);
}

const isValidParamPostOneRating = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.comment] = {length: {minimum: 5}};
    constraints[payload.isPrakerja] = {length: {minimum: 5}};
    constraints[payload.fullname] = {length: {minimum: 4}};
    values[payload.course_Id] = payload.course_Id;
    values[payload.comment] = payload.comment;
    values[payload.rating] = payload.rating;
    values[payload.user_Id] = payload.user_Id;
    values[payload.isPrakerja] = payload.isPrakerja;
    values[payload.fullname] = payload.fullname;
    return await validateConstraints(values,constraints);
}

const isValidParamUpdateOneRating = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.comment] = {length: {minimum: 5}};
    constraints[payload.isPrakerja] = {length: {minimum: 5}};
    constraints[payload.fullname] = {length: {minimum: 4}};
    values[payload.course_Id] = payload.course_Id;
    values[payload.comment] = payload.comment;
    values[payload.rating] = payload.rating;
    values[payload.user_Id] = payload.user_Id;
    values[payload.isPrakerja] = payload.isPrakerja;
    values[payload.fullname] = payload.fullname;
    return await validateConstraints(values,constraints);
}


module.exports = {
    isValidParamPostOneRating: isValidParamPostOneRating,
    isValidParamGetOneRating: isValidParamGetOneRating,
    isValidParamGetAllRating: isValidParamGetAllRating,
    isValidParamUpdateOneRating:isValidParamUpdateOneRating

}