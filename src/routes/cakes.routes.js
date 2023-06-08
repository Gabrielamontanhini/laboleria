import { Router } from "express";
import { getCakes, postCakes } from "../controllers/cakes.controllers.js";
import { validateSchema } from "../middlewares/validateSchema.middleware.js";
import { cakeSchema } from "../schemas/cakes.schema.js";

const cakeRouter = Router()

cakeRouter.post("/cakes",validateSchema(cakeSchema) ,postCakes)
cakeRouter.get("/cakes", getCakes)

export default cakeRouter