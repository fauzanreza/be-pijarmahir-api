'use strict';

const wrapper = require('../../../../helpers/utils/wrapper');
const Emitter = require('../../../../helpers/events/event_emitter');
const TalentaDigital = require('./domain');

const postOneTalentaDigital = async (payload) => {
    const talenta_digital = new TalentaDigital();
    const postCommand = async (payload) => {
        return await talenta_digital.addNewTalentaDigital(payload);
    }
    return postCommand(payload);
}

const updateOneTalentaDigital = async (id) => {
    const talenta_digital = new TalentaDigital();
    const updateCommand = async (id) => {
        return await talenta_digital.updateTalentaDigital(id);
    }
    return updateCommand(id);
}

const patchOneTalentaDigital = async (id, payload) => {
    const talenta_digital = new TalentaDigital();
    const putCommand = async (id, payload) => {
        return await talenta_digital.updateTalentaDigital(id, payload);
    }
    return putCommand(id, payload);
}

module.exports = {
    postOneTalentaDigital:postOneTalentaDigital,
    updateOneTalentaDigital:updateOneTalentaDigital,
    patchOneTalentaDigital:patchOneTalentaDigital
}