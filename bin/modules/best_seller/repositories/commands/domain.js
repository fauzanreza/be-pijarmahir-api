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

class BestSeller{
    async addNewBestSeller(payload){
        const data = [payload];
        let view = model.generalBestSeller();
        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.course_Id)){accumulator.course_Id = value.course_Id;}
            if(!validate.isEmpty(value.price)){accumulator.price = value.price;}
            if(!validate.isEmpty(value.fullname)){accumulator.fullname = value.fullname;}
            if(!validate.isEmpty(value.thumbnail)){accumulator.thumbnail = value.thumbnail;}
            if(!validate.isEmpty(value.rating)){accumulator.rating = value.rating;}
            if(!validate.isEmpty(value.totalRater)){accumulator.totalRater = value.totalRater;}
            if(!validate.isEmpty(value.teacher)){accumulator.teacher = value.teacher;}
            if(!validate.isEmpty(value.category_id)){accumulator.category_id = value.category_id;}
            return accumulator;
        }, view);

        const document = view;
        const result = await command.insertOneBestSeller(document);

        return result;
    }

    async updateBestSeller(params, payload){
        const data = [payload];
        let view = model.generalBestSeller();
        const pass = await commonUtil.encrypt(data[0].type, algorithm, secretKey)
        data[0].type = pass
        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.id)){accumulator.id = value.id;}
            if(!validate.isEmpty(value.course_Id)){accumulator.course_Id = value.course_Id;}
            if(!validate.isEmpty(value.price)){accumulator.price = value.price;}
            if(!validate.isEmpty(value.fullname)){accumulator.fullname = value.fullname;}
            if(!validate.isEmpty(value.thumbnail)){accumulator.thumbnail = value.thumbnail;}
            if(!validate.isEmpty(value.rating)){accumulator.rating = value.rating;}
            if(!validate.isEmpty(value.totalRater)){accumulator.totalRater = value.totalRater;}
            if(!validate.isEmpty(value.teacher)){accumulator.teacher = value.teacher;}
            if(!validate.isEmpty(value.category_id)){accumulator.category_id = value.category_id;}
            return accumulator;
        }, view);
        const document = view;
        const result = await command.updateOneBestSeller(params, document);
        return result;
    }



}

module.exports = BestSeller;