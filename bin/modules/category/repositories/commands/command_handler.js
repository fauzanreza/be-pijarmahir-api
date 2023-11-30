'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const Category = require('./domain');

const postOneCategory = async (payload) => {
    const category = new Category();
    const postCommand = async (payload) => {
        return await category.addNewCategory(payload);
    }
    return postCommand(payload);
}


const patchOneCategory = async (id, payload) => {
    const category = new Category();
    const putCommand = async (id, payload) => {
        return await category.updateCategory(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneCategory:postOneCategory,
    patchOneCategory:patchOneCategory
}