'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const User = require('./domain');

const postOneUser = async (payload) => {
    const user = new User();
    const postCommand = async (payload) => {
        return await user.addNewUser(payload);
    }
    return postCommand(payload);
}

const updateOneUser = async (id) => {
    const user = new User();
    const updateCommand = async (id) => {
        return await user.updateUser(id);
    }
    return updateCommand(id);
}

const patchOneUser = async (id, payload) => {
    const user = new User();
    const putCommand = async (id, payload) => {
        return await user.updateUser(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneUser:postOneUser,
    updateOneUser:updateOneUser,
    patchOneUser:patchOneUser
}