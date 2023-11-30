'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');

const insertOneBestSeller = async (document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'best_seller';
    const recordset = await db.postOne(table, document);
    return recordset;
}
const updateOneBestSeller = async (params, document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'best_seller';
    const id = params.id
    const recordset = await db.updateOne(table, document, id);
    return recordset;
}

module.exports = {
    insertOneBestSeller: insertOneBestSeller,
    updateOneBestSeller: updateOneBestSeller
}