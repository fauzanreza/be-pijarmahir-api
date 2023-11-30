'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const Rating = require('./domain');

const postOneRating = async (payload) => {
    const rating = new Rating();
    const postCommand = async (payload) => {
        return await rating.addNewRating(payload);
    }
    return postCommand(payload);
}

const updateOneRating = async (id) => {
    const rating = new Rating();
    const updateCommand = async (id) => {
        return await rating.updateRating(id);
    }
    return updateCommand(id);
}

const patchOneRating = async (id, payload) => {
    const rating = new Rating();
    const putCommand = async (id, payload) => {
        return await rating.updateRating(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneRating:postOneRating,
    updateOneRating:updateOneRating,
    patchOneRating:patchOneRating
}