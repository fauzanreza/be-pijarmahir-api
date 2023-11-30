'use strict';

const wrapper = require('../../../helpers/utils/wrapper');
const commandHandler = require('../repositories/commands/command_handler');
const queryHandler = require('../repositories/queries/query_handler');
const validator = require('../utils/validator')

const getAllMahirPrakerja = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetAllMahirPrakerja(queryParam);

  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getAllMahirPrakerja(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}

const getOneMahirPrakerja = async (req, res, next) => {
  const queryParam = req.params;
  const validateParam = await validator.isValidParamGetOneMahirPrakerja(queryParam);
  const getRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await queryHandler.getOneMahirPrakerja(queryParam);
    }
  }

  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res, 'success', result, `Your Request Has Been Processed`);
  }

  sendResponse(await getRequest(validateParam));
}



const postOneMahirPrakerja = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamPostOneMahirPrakerja(payload);
  const postRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.postOneMahirPrakerja(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await postRequest(validateParam));
}

const patchOneMahirPrakerja = async (req, res, next) => {
  const id  = req.params;
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneMahirPrakerja(payload);
  const patchRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.patchOneMahirPrakerja(id, payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await patchRequest(validateParam));
}


const UpdateOneMahirPrakerja = async (req, res, next) => {
  const payload = req.body;
  const validateParam = await validator.isValidParamUpdateOneMahirPrakerja(payload);
  const updateRequest = async (result) => {
    if(result.err){
      return result;
    }else{
      return await commandHandler.updateOneMahirPrakerja(payload);
    }
  }
  const sendResponse = async (result) => {
    (result.err) ? wrapper.response(res,'fail',result) : 
    wrapper.response(res,'success',result,`Your Request Has Been Processed`);
  }
  sendResponse(await updateRequest(validateParam));
}

module.exports = {
  postOneMahirPrakerja,
  getAllMahirPrakerja,
  getOneMahirPrakerja,
  UpdateOneMahirPrakerja,
  patchOneMahirPrakerja
}