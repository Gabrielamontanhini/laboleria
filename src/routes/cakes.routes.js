import { Router } from "express";
import { postCakes } from "../controllers/cakes.controllers.js";

const cakeRouter = Router()

cakeRouter.post("/cakes", postCakes)

export default cakeRouter