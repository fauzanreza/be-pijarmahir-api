'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const FlashSale = require('./domain');

const postOneFlashSale = async (payload) => {
    const flash_sale = new FlashSale();
    const postCommand = async (payload) => {
        return await flash_sale.addNewFlashSale(payload);
    }
    return postCommand(payload);
}

const updateOneFlashSale = async (id) => {
    const flash_sale = new FlashSale();
    const updateCommand = async (id) => {
        return await flash_sale.updateFlashSale(id);
    }
    return updateCommand(id);
}

const patchOneFlashSale = async (id, payload) => {
    const flash_sale = new FlashSale();
    const putCommand = async (id, payload) => {
        return await flash_sale.updateFlashSale(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneFlashSale:postOneFlashSale,
    updateOneFlashSale:updateOneFlashSale,
    patchOneFlashSale:patchOneFlashSale
}