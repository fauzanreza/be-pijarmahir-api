'use strict';

const MySQL = require('../../../../helpers/databases/mariadb/db');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const ObjectId = require('mysql').ObjectId;

const findAllMahirPrakerja = async (parameter) => {
    parameter = {$and:[parameter]};
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'mahir_prakerja';
    const recordset = await db.findMany(table);
    return recordset;
}

const findOneMahirPrakerja = async (params) => {
    const db = new MySQL(config.getDevelopmentDBMySQL());
    const table =  'mahir_prakerja';
    const id = params.id
    const recordset = await db.findData(table, id);
    return recordset;
}

module.exports = {
    findAllMahirPrakerja,
    findOneMahirPrakerja
}