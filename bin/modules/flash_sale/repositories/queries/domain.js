'use strict';

const nconf = require('nconf');
const rp = require('request-promise');
const model = require('./query_model');
const query = require('./query');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const validate = require('validate.js');
const logger = require("../../../../helpers/utils/logger");

class FlashSale{
    constructor(param){
        this.id = param.id,
        this.course_Id = param.course_Id;
        this.price = param.price;
        this.fullname = param.fullname;
        this.thumbnail = param.thumbnail;
        this.rating = param.rating;
        this.totalRater = param.totalRater;
        this.teacher = param.teacher;
        this.percentage = param.percentage;
        this.priceAfter = param.priceAfter;
        this.category_id = param.category_id;
        this.createdAt = param.createdAt;
        this.updatedAt = param.updatedAt;
    }

    async viewOneFlashSale(){
        const param = {"id": this.id};
        const result = await query.findOneFlashSale(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }
    }


    async viewAllFlashSale(){

    const param = {};
        const result = await query.findAllFlashSale(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }

    }

}

module.exports = FlashSale;