import Joi from "joi";

export const clientSchema = Joi.object({
    name: Joi.number().integer().required(),
    address: Joi.number().integer().required(),
    phone: Joi.number().integer().required()
})