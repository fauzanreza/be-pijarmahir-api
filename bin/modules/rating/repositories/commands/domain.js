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

class Rating{

    async addNewRating(payload){
        const data = [payload];
        let view = model.generalRating();
        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.course_Id)){accumulator.course_Id = value.course_Id;}
            if(!validate.isEmpty(value.comment)){accumulator.comment = value.comment;}
            if(!validate.isEmpty(value.rating)){accumulator.rating = value.rating;}
            if(!validate.isEmpty(value.user_Id)){accumulator.user_Id = value.user_Id;}
            if(!validate.isEmpty(value.isPrakerja)){accumulator.isPrakerja = value.isPrakerja;}
            if(!validate.isEmpty(value.fullname)){accumulator.fullname = value.fullname;}
            return accumulator;
        }, view);

        const document = view;
        const result = await command.insertOneRating(document);

        return result;
    }

    async updateRating(params, payload){
        const data = [payload];
        let view = model.generalRating();
        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.id)){accumulator.id = value.id;}
            if(!validate.isEmpty(value.course_Id)){accumulator.course_Id = value.course_Id;}
            if(!validate.isEmpty(value.comment)){accumulator.comment = value.comment;}
            if(!validate.isEmpty(value.rating)){accumulator.rating = value.rating;}
            if(!validate.isEmpty(value.user_Id)){accumulator.user_Id = value.user_Id;}
            if(!validate.isEmpty(value.isPrakerja)){accumulator.isPrakerja = value.isPrakerja;}
            if(!validate.isEmpty(value.fullname)){accumulator.fullname = value.fullname;}     
            return accumulator;
        }, view);
        const document = view;
        const result = await command.updateOneRating(params, document);
        return result;
    }



}

module.exports = Rating;