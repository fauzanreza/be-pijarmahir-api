'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');

const insertOneCourse = async (document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'course';
    const recordset = await db.postOne(table, document);
    return recordset;
}
const updateOneCourse = async (params, document) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'course';
    const id = params.id
    const recordset = await db.updateOne(table, document, id);
    return recordset;
}

module.exports = {
    insertOneCourse: insertOneCourse,
    updateOneCourse: updateOneCourse
}