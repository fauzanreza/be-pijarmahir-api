'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const Collection = require('./domain');

const postOneCollection = async (payload) => {
    const collection = new Collection();
    const postCommand = async (payload) => {
        return await collection.addNewCollection(payload);
    }
    return postCommand(payload);
}

const updateOneCollection = async (id) => {
    const collection = new Collection();
    const updateCommand = async (id) => {
        return await collection.updateCollection(id);
    }
    return updateCommand(id);
}

const patchOneCollection = async (id, payload) => {
    const collection = new Collection();
    const putCommand = async (id, payload) => {
        return await collection.updateCollection(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneCollection:postOneCollection,
    updateOneCollection:updateOneCollection,
    patchOneCollection:patchOneCollection
}