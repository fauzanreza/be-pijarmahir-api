'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const MahirPrakerja = require('./domain');

const postOneMahirPrakerja = async (payload) => {
    const mahir_prakerja = new MahirPrakerja();
    const postCommand = async (payload) => {
        return await mahir_prakerja.addNewMahirPrakerja(payload);
    }
    return postCommand(payload);
}

const updateOneMahirPrakerja = async (id) => {
    const mahir_prakerja = new MahirPrakerja();
    const updateCommand = async (id) => {
        return await mahir_prakerja.updateMahirPrakerja(id);
    }
    return updateCommand(id);
}

const patchOneMahirPrakerja = async (id, payload) => {
    const mahir_prakerja = new MahirPrakerja();
    const putCommand = async (id, payload) => {
        return await mahir_prakerja.updateMahirPrakerja(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneMahirPrakerja:postOneMahirPrakerja,
    updateOneMahirPrakerja:updateOneMahirPrakerja,
    patchOneMahirPrakerja:patchOneMahirPrakerja
}