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

const isValidParamGetOneCourse = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.category_name] = {length: {minimum: 4}};
    constraints[payload.fullname] = {length: {minimum: 5}};
    constraints[payload.duration] = {length: {minimum: 2}};
    constraints[payload.summary] = {length: {minimum: 4}};
    values[payload.category_id] = payload.category_id;
    values[payload.category_name] = payload.category_name;
    values[payload.coursetype] = payload.coursetype;
    values[payload.fullname] = payload.fullname;
    values[payload.duration] = payload.duration;
    values[payload.price] = payload.price;
    values[payload.rating] = payload.rating;
    values[payload.totalrater] = payload.totalrater;
    values[payload.summary] = payload.summary;
    values[payload.teacher] = payload.teacher;
    values[payload.enrolledusers] = payload.enrolledusers;
    values[payload.tag] = payload.tag;
    values[payload.whislisted] = payload.whislisted;
    values[payload.owned] = payload.owned;
    values[payload.classStatus] = payload.classStatus;
    values[payload.thumbnail] = payload.thumbnail;

    return await validateConstraints(values,constraints);
}

const isValidParamGetAllCourse = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.category_name] = {length: {minimum: 4}};
    constraints[payload.fullname] = {length: {minimum: 5}};
    constraints[payload.duration] = {length: {minimum: 2}};
    constraints[payload.summary] = {length: {minimum: 4}};
    values[payload.category_id] = payload.category_id;
    values[payload.category_name] = payload.category_name;
    values[payload.coursetype] = payload.coursetype;
    values[payload.fullname] = payload.fullname;
    values[payload.duration] = payload.duration;
    values[payload.price] = payload.price;
    values[payload.rating] = payload.rating;
    values[payload.totalrater] = payload.totalrater;
    values[payload.summary] = payload.summary;
    values[payload.teacher] = payload.teacher;
    values[payload.enrolledusers] = payload.enrolledusers;
    values[payload.tag] = payload.tag;
    values[payload.whislisted] = payload.whislisted;
    values[payload.owned] = payload.owned;
    values[payload.classStatus] = payload.classStatus;
    values[payload.thumbnail] = payload.thumbnail;
    return await validateConstraints(values,constraints);
}

const isValidParamPostOneCourse = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.category_name] = {length: {minimum: 4}};
    constraints[payload.fullname] = {length: {minimum: 5}};
    constraints[payload.duration] = {length: {minimum: 2}};
    constraints[payload.summary] = {length: {minimum: 4}};
    values[payload.category_id] = payload.category_id;
    values[payload.category_name] = payload.category_name;
    values[payload.coursetype] = payload.coursetype;
    values[payload.fullname] = payload.fullname;
    values[payload.duration] = payload.duration;
    values[payload.price] = payload.price;
    values[payload.rating] = payload.rating;
    values[payload.totalrater] = payload.totalrater;
    values[payload.summary] = payload.summary;
    values[payload.teacher] = payload.teacher;
    values[payload.enrolledusers] = payload.enrolledusers;
    values[payload.tag] = payload.tag;
    values[payload.whislisted] = payload.whislisted;
    values[payload.owned] = payload.owned;
    values[payload.classStatus] = payload.classStatus;
    values[payload.thumbnail] = payload.thumbnail;
    return await validateConstraints(values,constraints);
}

const isValidParamUpdateOneCourse = async (payload) => {
    let constraints = {};
    let values = {};
    constraints[payload.category_name] = {length: {minimum: 4}};
    constraints[payload.fullname] = {length: {minimum: 5}};
    constraints[payload.duration] = {length: {minimum: 2}};
    constraints[payload.summary] = {length: {minimum: 4}};
    values[payload.category_id] = payload.category_id;
    values[payload.category_name] = payload.category_name;
    values[payload.coursetype] = payload.coursetype;
    values[payload.fullname] = payload.fullname;
    values[payload.duration] = payload.duration;
    values[payload.price] = payload.price;
    values[payload.rating] = payload.rating;
    values[payload.totalrater] = payload.totalrater;
    values[payload.summary] = payload.summary;
    values[payload.teacher] = payload.teacher;
    values[payload.enrolledusers] = payload.enrolledusers;
    values[payload.tag] = payload.tag;
    values[payload.whislisted] = payload.whislisted;
    values[payload.owned] = payload.owned;
    values[payload.classStatus] = payload.classStatus;
    values[payload.thumbnail] = payload.thumbnail;
    return await validateConstraints(values,constraints);
}


module.exports = {
    isValidParamPostOneCourse: isValidParamPostOneCourse,
    isValidParamGetOneCourse: isValidParamGetOneCourse,
    isValidParamGetAllCourse: isValidParamGetAllCourse,
    isValidParamUpdateOneCourse:isValidParamUpdateOneCourse

}