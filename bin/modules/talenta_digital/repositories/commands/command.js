'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');

const insertOneTalentaDigital = async (document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'talenta_digital';
    const recordset = await db.postOne(table, document);
    return recordset;
}
const updateOneTalentaDigital = async (params, document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'talenta_digital';
    const id = params.id
    const recordset = await db.updateOne(table, document, id);
    return recordset;
}

module.exports = {
    insertOneTalentaDigital: insertOneTalentaDigital,
    updateOneTalentaDigital: updateOneTalentaDigital
}