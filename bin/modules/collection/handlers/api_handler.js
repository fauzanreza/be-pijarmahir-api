'use strict';

const wrapper = require('../../../helpers/utils/wrapper');
const commandHandler = require('../repositories/commands/command_handler');
const queryHandler = require('../repositories/queries/query_handler');
const validator = require('../utils/validator')

const getAllCollection = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetAllCollection(queryParam);

  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getAllCollection(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}

const getOneCollection = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetOneCollection(queryParam);
  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getOneCollection(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}



const postOneCollection = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamPostOneCollection(payload);
  const postRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.postOneCollection(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await postRequest(validateParam));
}

const patchOneCollection = async (req, res, next) => {
  const id  = req.params;
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneCollection(payload);
  const patchRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.patchOneCollection(id, payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await patchRequest(validateParam));
}


const UpdateOneCollection = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneCollection(payload);
  const updateRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.updateOneCollection(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await updateRequest(validateParam));
}

module.exports = {
  postOneCollection,
  getAllCollection,
  getOneCollection,
  UpdateOneCollection,
  patchOneCollection
}