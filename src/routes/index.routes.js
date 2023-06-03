import { Router } from "express";
import clientsRouter from "./clients.routes";
import cakeRouter from "./cakes.routes";
import ordersRouter from "./orders.routes";

const router = Router()

router.use(cakeRouter)
router.use(clientsRouter)
router.use(ordersRouter)

export default router