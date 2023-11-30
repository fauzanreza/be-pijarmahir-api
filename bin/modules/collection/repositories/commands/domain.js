'use strict';

const nconf = require('nconf');
const command = require('./command');
const query = require('../queries/query');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const validate = require('validate.js');
const logger = require("../../../../helpers/utils/logger");
const jwtAuth = require('../../../../auth/jwt_auth_helper');
const commonUtil = require('../../../../helpers/utils/common');
const model = require('./command_model');

class Collection{
    async addNewCollection(payload){
        const data = [payload];
        let view = model.generalCollection();

        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.name)){accumulator.name = value.name;}
            if(!validate.isEmpty(value.type)){accumulator.type = value.type;}
            if(!validate.isEmpty(value.numOrder)){accumulator.numOrder = value.numOrder;}
            return accumulator;
        }, view);

        const document = view;
        const result = await command.insertOneCollection(document);

        return result;
    }

    async updateCollection(params, payload){
        const data = [payload];
        let view = model.generalCollection();
        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.id)){accumulator.id = value.id;}
            if(!validate.isEmpty(value.name)){accumulator.name = value.name;}
            if(!validate.isEmpty(value.type)){accumulator.type = value.type;}
            if(!validate.isEmpty(value.numOrder)){accumulator.numOrder = value.numOrder;}   
            return accumulator;
        }, view);
        const document = view;
        const result = await command.updateOneCollection(params, document);
        return result;
    }



}

module.exports = Collection;