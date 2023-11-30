'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const ObjectId = require('mysql').ObjectId;

const findAllUser = async (parameter) => {
    parameter = {$and:[parameter]};
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'user';
    const recordset = await db.findMany(table);
    return recordset;
}

const findOneUser = async (params) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'user';
    const id = params.id
    const recordset = await db.findData(table, id);
    return recordset;
}

module.exports = {
    findAllUser,
    findOneUser
}