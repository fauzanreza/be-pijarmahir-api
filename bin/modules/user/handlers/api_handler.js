'use strict';

const wrapper = require('../../../helpers/utils/wrapper');
const commandHandler = require('../repositories/commands/command_handler');
const queryHandler = require('../repositories/queries/query_handler');
const validator = require('../utils/validator')

const getAllUser = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetAllUser(queryParam);

  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getAllUser(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}

const getOneUser = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetOneUser(queryParam);
  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getOneUser(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}



const postOneUser = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamPostOneUser(payload);
  const postRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.postOneUser(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await postRequest(validateParam));
}

const patchOneUser = async (req, res, next) => {
  const id  = req.params;
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneUser(payload);
  const patchRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.patchOneUser(id, payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await patchRequest(validateParam));
}


const UpdateOneUser = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneUser(payload);
  const updateRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.updateOneUser(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await updateRequest(validateParam));
}

module.exports = {
  postOneUser,
  getAllUser,
  getOneUser,
  UpdateOneUser,
  patchOneUser
}