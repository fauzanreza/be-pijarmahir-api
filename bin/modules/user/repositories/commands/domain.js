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

class User{
    
    async generateCredential(payload) {
        const { username, password } = payload;
        const user = await query.findOneUser({username});
        if(user.err){
            return wrapper.error('error', user.err, 409);
        }
        const userId = user.data._id;
        const userName = user.data.username;
        const pass = await commonUtil.decrypt(user.data.password, algorithm, secretKey);
        if(username!==userName || pass!==password){
            return wrapper.error('error', 'Username or password invalid!', 409);
        }
        const data = {
            username,
            sub: userId
        }
        const token =  await jwtAuth.generateToken(data);
        return wrapper.data(token, '', 200);
    }

    async addNewUser(payload){
        const data = [payload];
        let view = model.generalUser();

        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.username)){accumulator.username = value.username;}
            if(!validate.isEmpty(value.password)){accumulator.password = value.password;}
            if(!validate.isEmpty(value.email)){accumulator.email = value.email;}
            if(!validate.isEmpty(value.no_tlp)){accumulator.no_tlp = value.no_tlp;}
            if(!validate.isEmpty(value.birthdate)){accumulator.birthdate = value.birthdate;}
            if(!validate.isEmpty(value.gender)){accumulator.gender = value.gender;}
            return accumulator;
        }, view);

        const document = view;
        const result = await command.insertOneUser(document);

        return result;
    }

    async updateUser(params, payload){
        const data = [payload];
        let view = model.generalUser();
        
        view = data.reduce((accumulator, value) => {
            if(!validate.isEmpty(value.id)){accumulator.id = value.id;}
            if(!validate.isEmpty(value.username)){accumulator.username = value.username;}
            if(!validate.isEmpty(value.password)){accumulator.password = value.password;}
            if(!validate.isEmpty(value.email)){accumulator.email = value.email;}
            if(!validate.isEmpty(value.no_tlp)){accumulator.no_tlp = value.no_tlp;}
            if(!validate.isEmpty(value.birthdate)){accumulator.birthdate = value.birthdate;}
            if(!validate.isEmpty(value.gender)){accumulator.gender = value.gender;}     
            return accumulator;
        }, view);
        const document = view;
        const result = await command.updateOneUser(params, document);
        return result;
    }



}

module.exports = User;