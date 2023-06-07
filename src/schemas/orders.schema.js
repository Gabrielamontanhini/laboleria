import Joi from "joi";

export const orderSchema = Joi.object({
    clientId: Joi.number().integer().required(),
    cakeId: Joi.number().integer().required(),
    quantity: Joi.number().integer().required(),
    createdAt:Joi.required(),
    totalPrice: Joi.number().positive()
})