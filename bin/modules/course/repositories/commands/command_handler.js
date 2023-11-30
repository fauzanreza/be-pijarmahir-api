'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const Course = require('./domain');

const postOneCourse = async (payload) => {
    const course = new Course();
    const postCommand = async (payload) => {
        return await course.addNewCourse(payload);
    }
    return postCommand(payload);
}

const updateOneCourse = async (id) => {
    const course = new Course();
    const updateCommand = async (id) => {
        return await course.updateCourse(id);
    }
    return updateCommand(id);
}

const patchOneCourse = async (id, payload) => {
    const course = new Course();
    const putCommand = async (id, payload) => {
        return await course.updateCourse(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneCourse:postOneCourse,
    updateOneCourse:updateOneCourse,
    patchOneCourse:patchOneCourse
}