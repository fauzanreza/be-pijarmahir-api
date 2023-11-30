'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');

const insertOnePilihanTerbaik = async (document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'pilihan_terbaik';
    const recordset = await db.postOne(table, document);
    return recordset;
}
const updateOnePilihanTerbaik = async (params, document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'pilihan_terbaik';
    const id = params.id
    const recordset = await db.updateOne(table, document, id);
    return recordset;
}

module.exports = {
    insertOnePilihanTerbaik: insertOnePilihanTerbaik,
    updateOnePilihanTerbaik: updateOnePilihanTerbaik
}