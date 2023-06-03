import { Router } from "express";
import clientsRouter from "./clients.routes.js";
import cakeRouter from "./cakes.routes.js";
import ordersRouter from "./orders.routes.js";

const router = Router()

router.use(cakeRouter)
router.use(clientsRouter)
router.use(ordersRouter)

export default router