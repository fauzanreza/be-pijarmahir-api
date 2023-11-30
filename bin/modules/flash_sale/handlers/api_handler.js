'use strict';

const wrapper = require('../../../helpers/utils/wrapper');
const commandHandler = require('../repositories/commands/command_handler');
const queryHandler = require('../repositories/queries/query_handler');
const validator = require('../utils/validator')

const getAllFlashSale = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetAllFlashSale(queryParam);

  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getAllFlashSale(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}

const getOneFlashSale = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetOneFlashSale(queryParam);
  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getOneFlashSale(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}



const postOneFlashSale = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamPostOneFlashSale(payload);
  const postRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.postOneFlashSale(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await postRequest(validateParam));
}

const patchOneFlashSale = async (req, res, next) => {
  const id  = req.params;
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneFlashSale(payload);
  const patchRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.patchOneFlashSale(id, payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await patchRequest(validateParam));
}


const UpdateOneFlashSale = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneFlashSale(payload);
  const updateRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.updateOneFlashSale(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await updateRequest(validateParam));
}

module.exports = {
  postOneFlashSale,
  getAllFlashSale,
  getOneFlashSale,
  UpdateOneFlashSale,
  patchOneFlashSale
}