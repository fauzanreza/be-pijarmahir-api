'use strict';

const wrapper = require('../../../helpers/utils/wrapper');
const commandHandler = require('../repositories/commands/command_handler');
const queryHandler = require('../repositories/queries/query_handler');
const validator = require('../utils/validator')

const getAllCourse = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetAllCourse(queryParam);

  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getAllCourse(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}

const getOneCourse = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetOneCourse(queryParam);
  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getOneCourse(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}



const postOneCourse = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamPostOneCourse(payload);
  const postRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.postOneCourse(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await postRequest(validateParam));
}

const patchOneCourse = async (req, res, next) => {
  const id  = req.params;
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneCourse(payload);
  const patchRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.patchOneCourse(id, payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await patchRequest(validateParam));
}


const UpdateOneCourse = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneCourse(payload);
  const updateRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.updateOneCourse(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await updateRequest(validateParam));
}

module.exports = {
  postOneCourse,
  getAllCourse,
  getOneCourse,
  UpdateOneCourse,
  patchOneCourse
}