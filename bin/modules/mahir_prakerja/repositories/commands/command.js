'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');

const insertOneMahirPrakerja = async (document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'mahir_prakerja';
    const recordset = await db.postOne(table, document);
    return recordset;
}
const updateOneMahirPrakerja = async (params, document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'mahir_prakerja';
    const id = params.id
    const recordset = await db.updateOne(table, document, id);
    return recordset;
}

module.exports = {
    insertOneMahirPrakerja: insertOneMahirPrakerja,
    updateOneMahirPrakerja: updateOneMahirPrakerja
}