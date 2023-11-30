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

const algorithm = 'aes-256-ctr';
const secretKey = 'Dom@in2018';

class Category{

    async addNewCategory(payload){
        const data = [payload];
        let view = model.generalCategory();

        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.categoryname)){accumulator.categoryname = value.categoryname;}
            if(!validate.isEmpty(value.description)){accumulator.description = value.description;}
            return accumulator;
        }, view);

        const document = view;
        const result = await command.insertOneCategory(document);

        return result;
    }

    async updateCategory(params, payload){
        const data = [payload];
        let view = model.generalCategory();
        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.id)){accumulator.id = value.id;}
            if(!validate.isEmpty(value.categoryname)){accumulator.categoryname = value.categoryname;}
            if(!validate.isEmpty(value.description)){accumulator.description = value.description;}  
            return accumulator;
        }, view);
        const document = view;
        const result = await command.updateOneCategory(params, document);
        return result;
    }



}

module.exports = Category;