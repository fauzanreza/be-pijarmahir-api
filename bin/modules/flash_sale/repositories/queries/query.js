'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const ObjectId = require('mysql').ObjectId;

const findAllFlashSale = async (parameter) => {
    parameter = {$and:[parameter]};
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'flash_sale';
    const recordset = await db.findMany(table);
    return recordset;
}

const findOneFlashSale = async (params) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'flash_sale';
    const id = params.id
    const recordset = await db.findData(table, id);
    return recordset;
}

module.exports = {
    findAllFlashSale,
    findOneFlashSale
}