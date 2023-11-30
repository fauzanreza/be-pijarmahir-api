'use strict';

const generalUser = () => {
    const model = {
        username:``,
        password:``,
        email:``,
        no_tlp:``,
        birthdate:``,
        gender:``,
        createdAt:``,
        createdBy:``,
        updatedAt:``,
        updatedBy:``      
    }
    return model;
}

module.exports = {
    generalUser: generalUser
}
