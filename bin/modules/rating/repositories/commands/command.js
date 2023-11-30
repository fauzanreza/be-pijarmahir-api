'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');

const insertOneRating = async (document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'rating';
    const recordset = await db.postOne(table, document);
    return recordset;
}
const updateOneRating = async (params, document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'rating';
    const id = params.id
    const recordset = await db.updateOne(table, document, id);
    return recordset;
}

module.exports = {
    insertOneRating: insertOneRating,
    updateOneRating: updateOneRating
}