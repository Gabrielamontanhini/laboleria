import { Router } from "express";
import { getOrderById, getOrders, getOrdersByClient, postOrder } from "../controllers/orders.controllers";

const ordersRouter = Router()

ordersRouter.post("/orders", postOrder)
ordersRouter.get("/orders", getOrders)
ordersRouter.get("/orders/:id", getOrderById)
ordersRouter.get("/clients/:id/orders", getOrdersByClient)

export default ordersRouter

