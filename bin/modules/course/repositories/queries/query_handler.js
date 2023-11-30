'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Course = require('./domain');

const getAllCourse = async (queryParam) => {
    const getData = async (queryParam) => {
        const course = new Course(queryParam);
        const result = await course.viewAllCourse();
        return result;
    }
    const result = await getData(queryParam);
    return result;
}
const getOneCourse = async (queryParam) => {
    const getQuery = async (queryParam) => {
        const course = new Course(queryParam);
        const result = await course.viewOneCourse();
        return result;
    }
    const result = await getQuery(queryParam);
    return result;
}


module.exports = {
    getAllCourse,
    getOneCourse
}