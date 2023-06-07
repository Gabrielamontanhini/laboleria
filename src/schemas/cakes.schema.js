import Joi from "joi";

export const cakeSchema = Joi.object({
    name: Joi.string().required(),
    price: Joi.number().integer().required(),
    image: Joi.string().required(),
    description: Joi.string().required()
})