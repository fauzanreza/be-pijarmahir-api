'use strict';

const nconf = require('nconf');
const rp = require('request-promise');
const model = require('./query_model');
const query = require('./query');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const validate = require('validate.js');
const logger = require("../../../../helpers/utils/logger");

class Collection{
    constructor(param){
        this.id = param.id,
        this.name = param.name;
        this.type = param.type;
        this.numOrder = param.numOrder;
        this.createdAt = param.createdAt;
        this.updatedAt = param.updatedAt;
    }

    async viewOneCollection(){
        const param = {"id": this.id};
        const result = await query.findOneCollection(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }
    }


    async viewAllCollection(){

    const param = {};
        const result = await query.findAllCollection(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }

    }

}

module.exports = Collection;