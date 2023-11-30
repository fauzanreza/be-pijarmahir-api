'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const BestSeller = require('./domain');

const postOneBestSeller = async (payload) => {
    const best_seller = new BestSeller();
    const postCommand = async (payload) => {
        return await best_seller.addNewBestSeller(payload);
    }
    return postCommand(payload);
}

const updateOneBestSeller = async (id) => {
    const best_seller = new BestSeller();
    const updateCommand = async (id) => {
        return await best_seller.updateBestSeller(id);
    }
    return updateCommand(id);
}

const patchOneBestSeller = async (id, payload) => {
    const best_seller = new BestSeller();
    const putCommand = async (id, payload) => {
        return await best_seller.updateBestSeller(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneBestSeller:postOneBestSeller,
    updateOneBestSeller:updateOneBestSeller,
    patchOneBestSeller:patchOneBestSeller
}