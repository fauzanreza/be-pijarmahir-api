'use strict';

const mysql = require('mysql');
const Emitter = require('../../events/event_emitter');
const wrapper = require('../../utils/wrapper');
const validate = require("validate.js");
const connect = require('mongodb');

class DB{
    constructor(config){
        this.config = config;
        this.statePool = false;
    }

    getConnection() {
        return this.statePool;
    }

    setConnection() {
        this.statePool = true;
    }

    done(connection) {
        connection.release();
        this.statePool = false;
    }

    createConnection() {
        this.pool = new mysql.createPool(this.config);
        this.setConnection();
    }

    async findData(table, id) {
        const self = this;
        if(!self.statePool){
            this.createConnection();
        }
        if(self.statePool){
            const recordset = () => {
                return new Promise((resolve, reject) => {
                    self.pool.getConnection((err, connection) => {
                        if (err) {
                            let errorMessage;
                            if (err.code === 'PROTOCOL_CONNECTION_LOST') {
                                errorMessage = 'Database connection was closed.';
                            }
                            if (err.code === 'ER_CON_COUNT_ERROR') {
                                errorMessage = 'Database has too many connections.';
                            }
                            if (err.code === 'ECONNREFUSED') {
                                errorMessage = 'Database connection was refused.';
                            }
                            self.done(connection);
                            return reject(wrapper.error(err.code,errorMessage,503));
                        } else {
                            connection.query(`SELECT * FROM ${table} WHERE id ='${id}'`, function (err, result, fields) {
                                if (err) {
                                    self.done(connection);
                                    return reject(wrapper.error(err.code,errorMessage,503));
                                } else {
                                    self.done(connection);
                                    return resolve(wrapper.data(JSON.stringify(result[0])));
                                }
                            });
                        }
                    });
                });
            }
            const result = await recordset().then(result =>{
                return wrapper.data(result.data);
            }).catch(err =>{
                return err;
            });
            return result;
        }
    }

    async findMany(table) {
        const self = this;
        if(!self.statePool){
          this.createConnection()
        }
        if(self.statePool){
            const recordset = () => {
                return new Promise((resolve, reject) => {
                    self.pool.getConnection((err, connection) => {
                        if (err) {
                            let errorMessage;
                            if (err.code === 'PROTOCOL_CONNECTION_LOST') {
                                errorMessage = 'Database connection was closed.';
                            }
                            if (err.code === 'ER_CON_COUNT_ERROR') {
                                errorMessage = 'Database has too many connections.';
                            }
                            if (err.code === 'ECONNREFUSED') {
                                errorMessage = 'Database connection was refused.';
                            }
                            self.done(connection);
                            return reject(wrapper.error(err.code,errorMessage,503));
                        } else {
                            connection.query(`SELECT * FROM ${table} `,  function (err, result, fields) {
                                if (err) {
                                    self.done(connection);
                                    return reject(wrapper.error(err.code,errorMessage,503));
                                } else {
                                    self.done(connection);
                                    return resolve(wrapper.data(JSON.stringify(result)));
                                }
                            });
                        }
                    
                    });
                });
            }
            const result = await recordset().then(result =>{
                return wrapper.data(result.data);
            }).catch(err =>{
                return err;
            });
            return result;
        }
      }


    async postOne(table, data) {
        const self = this;
        if(!self.statePool){
          this.createConnection()
        }
        if(self.statePool){
            const recordset = () => {
                return new Promise((resolve, reject) => {
                    self.pool.getConnection((err, connection) => {
                        if (err) {
                            let errorMessage;
                            if (err.code === 'PROTOCOL_CONNECTION_LOST') {
                                errorMessage = 'Database connection was closed.';
                            }
                            if (err.code === 'ER_CON_COUNT_ERROR') {
                                errorMessage = 'Database has too many connections.';
                            }
                            if (err.code === 'ECONNREFUSED') {
                                errorMessage = 'Database connection was refused.';
                            }
                            self.done(connection);
                            return reject(wrapper.error(err.code,errorMessage,503));
                        } else {
                            connection.query(`INSERT INTO ${table} SET ?`,data,  function (err, result, fields) {
                                if (err) {
                                    self.done(connection);
                                    return reject(wrapper.error(err.code,errorMessage,503));
                                } else {
                                    self.done(connection);
                                    return resolve(wrapper.data(JSON.stringify(result[0])));
                                }
                            });
                        }
                    
                    });
                });
            }
            const result = await recordset().then(result =>{
                return wrapper.data(result.data);
            }).catch(err =>{
                return err;
            });
            return result;
        }
      }
      async updateOne(table, data, id) {
        const self = this;
        if(!self.statePool){
          this.createConnection()
        }
        if(self.statePool){
            const recordset = () => {
                return new Promise((resolve, reject) => {
                    self.pool.getConnection((err, connection) => {
                        if (err) {
                            let errorMessage;
                            if (err.code === 'PROTOCOL_CONNECTION_LOST') {
                                errorMessage = 'Database connection was closed.';
                            }
                            if (err.code === 'ER_CON_COUNT_ERROR') {
                                errorMessage = 'Database has too many connections.';
                            }
                            if (err.code === 'ECONNREFUSED') {
                                errorMessage = 'Database connection was refused.';
                            }
                            self.done(connection);
                            return reject(wrapper.error(err.code,errorMessage,503));
                        } else {
                            connection.query(`UPDATE ${table} SET ? WHERE id = ?`,[data, id],  function (err, result, fields) {
                                if (err) {
                                    self.done(connection);
                                    return reject(wrapper.error(err.code,errorMessage,503));
                                } else {
                                    self.done(connection);
                                    return resolve(wrapper.data(JSON.stringify(result[0])));
                                }
                            });
                        }
                    
                    });
                });
            }
            const result = await recordset().then(result =>{
                return wrapper.data(result.data);
            }).catch(err =>{
                return err;
            });
            return result;
        }
      }
      async deleteOne(table, id) {
        const self = this;
        if(!self.statePool){
          this.createConnection()
        }
        if(self.statePool){
            const recordset = () => {
                return new Promise((resolve, reject) => {
                    self.pool.getConnection((err, connection) => {
                        if (err) {
                            let errorMessage;
                            if (err.code === 'PROTOCOL_CONNECTION_LOST') {
                                errorMessage = 'Database connection was closed.';
                            }
                            if (err.code === 'ER_CON_COUNT_ERROR') {
                                errorMessage = 'Database has too many connections.';
                            }
                            if (err.code === 'ECONNREFUSED') {
                                errorMessage = 'Database connection was refused.';
                            }
                            self.done(connection);
                            return reject(wrapper.error(err.code,errorMessage,503));
                        } else {
                            connection.query(`DELETE FROM ${table} WHERE id = ?`, id,  function (err, result, fields) {
                                if (err) {
                                    self.done(connection);
                                    return reject(wrapper.error(err.code,errorMessage,503));
                                } else {
                                    self.done(connection);
                                    return resolve(wrapper.data(JSON.stringify(result[0])));
                                }
                            });
                        }
                    
                    });
                });
            }
            const result = await recordset().then(result =>{
                return wrapper.data(result.data);
            }).catch(err =>{
                return err;
            });
            return result;
        }
      }
}

module.exports = DB;
