'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const KartuPrakerja = require('./domain');

const postOneKartuPrakerja = async (payload) => {
    const kartu_prakerja = new KartuPrakerja();
    const postCommand = async (payload) => {
        return await kartu_prakerja.addNewKartuPrakerja(payload);
    }
    return postCommand(payload);
}

const updateOneKartuPrakerja = async (id) => {
    const kartu_prakerja = new KartuPrakerja();
    const updateCommand = async (id) => {
        return await kartu_prakerja.updateKartuPrakerja(id);
    }
    return updateCommand(id);
}

const patchOneKartuPrakerja = async (id, payload) => {
    const kartu_prakerja = new KartuPrakerja();
    const putCommand = async (id, payload) => {
        return await kartu_prakerja.updateKartuPrakerja(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneKartuPrakerja:postOneKartuPrakerja,
    updateOneKartuPrakerja:updateOneKartuPrakerja,
    patchOneKartuPrakerja:patchOneKartuPrakerja
}