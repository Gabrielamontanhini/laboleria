import { Router } from "express";
import { postCakes } from "../controllers/cakes.controllers";

const cakeRouter = Router()

cakeRouter.post("/cakes", postCakes)

export default cakeRouter