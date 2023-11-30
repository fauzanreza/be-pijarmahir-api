'use strict';

const nconf = require('nconf');
const rp = require('request-promise');
const model = require('./query_model');
const query = require('./query');
const wrapper = require('../../../../helpers/utils/wrapper');
const config = require('../../../../infra/configs/global_config');
const validate = require('validate.js');
const logger = require("../../../../helpers/utils/logger");

class User{
    constructor(param){
        this.id = param.id,
        this.username = param.username;
        this.password = param.password;
        this.email = param.email;
        this.no_tlp = param.username;
        this.birthdate = param.birthdate;
        this.gender = param.gender;
        this.createdAt =  param.createdAt,
        this.updatedAt = param.updatedAt
    }

    async viewOneUser(){
        const param = {"id": this.id};
        const result = await query.findOneUser(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }
    }


    async viewAllUser(){

    const param = {};
        const result = await query.findAllUser(param);

        if(result.err){
            return result;
        }else{
            return wrapper.data(JSON.parse(result.data));
        }

    }

}

module.exports = User;