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

class Course{

    async addNewCourse(payload){
        const data = [payload];
        let view = model.generalCourse();
        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.category_id)){accumulator.category_id = value.category_id;}
            if(!validate.isEmpty(value.category_name)){accumulator.category_name = value.category_name;}
            if(!validate.isEmpty(value.coursetype)){accumulator.coursetype = value.coursetype;}
            if(!validate.isEmpty(value.fullname)){accumulator.fullname = value.fullname;}
            if(!validate.isEmpty(value.duration)){accumulator.duration = value.duration;}
            if(!validate.isEmpty(value.price)){accumulator.price = value.price;}
            if(!validate.isEmpty(value.rating)){accumulator.rating = value.rating;}
            if(!validate.isEmpty(value.totalrater)){accumulator.totalrater = value.totalrater;} 
            if(!validate.isEmpty(value.summary)){accumulator.summary = value.summary;} 
            if(!validate.isEmpty(value.teacher)){accumulator.teacher = value.teacher;}
            if(!validate.isEmpty(value.enrolledusers)){accumulator.enrolledusers = value.enrolledusers;} 
            if(!validate.isEmpty(value.tag)){accumulator.tag = value.tag;} 
            if(!validate.isEmpty(value.whislisted)){accumulator.whislisted = value.whislisted;} 
            if(!validate.isEmpty(value.owned)){accumulator.owned = value.owned;} 
            if(!validate.isEmpty(value.classStatus)){accumulator.classStatus = value.classStatus;}  
            if(!validate.isEmpty(value.thumbnail)){accumulator.thumbnail = value.thumbnail;}   
            return accumulator;
        }, view);

        const document = view;
        const result = await command.insertOneCourse(document);

        return result;
    }

    async updateCourse(params, payload){
        const data = [payload];
        let view = model.generalCourse();

        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.course_id)){accumulator.course_id = value.course_id;}
            if(!validate.isEmpty(value.category_id)){accumulator.category_id = value.category_id;}
            if(!validate.isEmpty(value.category_name)){accumulator.category_name = value.category_name;}
            if(!validate.isEmpty(value.coursetype)){accumulator.coursetype = value.coursetype;}
            if(!validate.isEmpty(value.fullname)){accumulator.fullname = value.fullname;}
            if(!validate.isEmpty(value.duration)){accumulator.duration = value.duration;}
            if(!validate.isEmpty(value.price)){accumulator.price = value.price;}
            if(!validate.isEmpty(value.rating)){accumulator.rating = value.rating;}
            if(!validate.isEmpty(value.totalrater)){accumulator.totalrater = value.totalrater;} 
            if(!validate.isEmpty(value.summary)){accumulator.summary = value.summary;} 
            if(!validate.isEmpty(value.teacher)){accumulator.teacher = value.teacher;}
            if(!validate.isEmpty(value.enrolledusers)){accumulator.enrolledusers = value.enrolledusers;} 
            if(!validate.isEmpty(value.tag)){accumulator.tag = value.tag;} 
            if(!validate.isEmpty(value.whislisted)){accumulator.whislisted = value.whislisted;} 
            if(!validate.isEmpty(value.owned)){accumulator.owned = value.owned;} 
            if(!validate.isEmpty(value.classStatus)){accumulator.classStatus = value.classStatus;}   
            if(!validate.isEmpty(value.thumbnail)){accumulator.thumbnail = value.thumbnail;}     
            return accumulator;
        }, view);
        const document = view;
        const result = await command.updateOneCourse(params, document);
        return result;
    }


}

module.exports = Course;