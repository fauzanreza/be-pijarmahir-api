'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');

const insertOneFlashSale = async (document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'flash_sale';
    const recordset = await db.postOne(table, document);
    return recordset;
}
const updateOneFlashSale = async (params, document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'flash_sale';
    const id = params.id
    const recordset = await db.updateOne(table, document, id);
    return recordset;
}

module.exports = {
    insertOneFlashSale: insertOneFlashSale,
    updateOneFlashSale: updateOneFlashSale
}