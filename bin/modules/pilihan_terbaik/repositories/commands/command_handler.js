'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const PilihanTerbaik = require('./domain');

const postOnePilihanTerbaik = async (payload) => {
    const pilihan_terbaik = new PilihanTerbaik();
    const postCommand = async (payload) => {
        return await pilihan_terbaik.addNewPilihanTerbaik(payload);
    }
    return postCommand(payload);
}

const updateOnePilihanTerbaik = async (id) => {
    const pilihan_terbaik = new PilihanTerbaik();
    const updateCommand = async (id) => {
        return await pilihan_terbaik.updatePilihanTerbaik(id);
    }
    return updateCommand(id);
}

const patchOnePilihanTerbaik = async (id, payload) => {
    const pilihan_terbaik = new PilihanTerbaik();
    const putCommand = async (id, payload) => {
        return await pilihan_terbaik.updatePilihanTerbaik(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOnePilihanTerbaik:postOnePilihanTerbaik,
    updateOnePilihanTerbaik:updateOnePilihanTerbaik,
    patchOnePilihanTerbaik:patchOnePilihanTerbaik
}