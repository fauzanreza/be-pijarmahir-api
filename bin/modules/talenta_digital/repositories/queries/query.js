'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const ObjectId = require('mysql').ObjectId;

const findAllTalentaDigital = async (parameter) => {
    parameter = {$and:[parameter]};
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'talenta_digital';
    const recordset = await db.findMany(table);
    return recordset;
}

const findOneTalentaDigital = async (params) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'talenta_digital';
    const id = params.id
    const recordset = await db.findData(table, id);
    return recordset;
}

module.exports = {
    findAllTalentaDigital,
    findOneTalentaDigital
}