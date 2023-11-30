'use strict';

const nconf = require('nconf');
const rp = require('request-promise');
const model = require('./query_model');
const query = require('./query');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const validate = require('validate.js');
const logger = require("../../../../helpers/utils/logger");

class Course{
    constructor(param){
        this.id = param.id,
        this.category_id = param.category_id;
        this.category_name = param.category_name;
        this.coursetype = param.coursetype;
        this.fullname = param.fullname;
        this.duration = param.duration;
        this.price = param.price;
        this.rating = param.rating;
        this.totalrater = param.totalrater;
        this.summary = param.summary;
        this.teacher = param.teacher;
        this.enrolledusers = param.enrolledusers;
        this.tag = param.tag;
        this.whislisted = param.whislisted;
        this.owned = param.owned;
        this.classStatus = param.classStatus;
        this.thumbnail = param.thumbnail;
        this.createdAt =  param.createdAt,
        this.updatedAt = param.updatedAt
    }

    async viewOneCourse(){
        const param = {"id": this.id};
        const result = await query.findOneCourse(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }
    }


    async viewAllCourse(){

    const param = {};
        const result = await query.findAllCourse(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }

    }

}

module.exports = Course;