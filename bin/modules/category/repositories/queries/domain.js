'use strict';

const nconf = require('nconf');
const rp = require('request-promise');
const model = require('./query_model');
const query = require('./query');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const validate = require('validate.js');
const logger = require("../../../../helpers/utils/logger");

class Category{
    constructor(param){
        this.id = param.id,
        this.categoryname = param.categoryname;
        this.description = param.description;
        this.createdAt =  param.createdAt,
        this.updatedAt = param.updatedAt
    }

    async viewOneCategory(){
        const param = {"id": this.id};
        const result = await query.findOneCategory(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }
    }


    async viewAllCategory(){

    const param = {};
        const result = await query.findAllCategory(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }

    }

}

module.exports = Category;