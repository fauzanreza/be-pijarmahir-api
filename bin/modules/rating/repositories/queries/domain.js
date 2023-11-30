'use strict';

const nconf = require('nconf');
const rp = require('request-promise');
const model = require('./query_model');
const query = require('./query');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const validate = require('validate.js');
const logger = require("../../../../helpers/utils/logger");

class Rating{
    constructor(param){
        this.id = param.id,
        this.course_Id = param.course_Id;
        this.comment = param.comment;
        this.rating = param.rating;
        this.user_Id = param.user_id;
        this.isPrakerja = param.isPrakerja;
        this.fullname = param.fullname;
        this.createdAt =  param.createdAt,
        this.updatedAt = param.updatedAt
    }

    async viewOneRating(){
        const param = {"id": this.id};
        const result = await query.findOneRating(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }
    }


    async viewAllRating(){

    const param = {};
        const result = await query.findAllRating(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }

    }

}

module.exports = Rating;