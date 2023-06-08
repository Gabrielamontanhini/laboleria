import { Router } from "express";
import { deleteOrderById, getOrderById, getOrders, getOrdersByClient, postOrder } from "../controllers/orders.controllers.js";

const ordersRouter = Router()

ordersRouter.post("/orders", postOrder)
ordersRouter.get("/orders", getOrders)
ordersRouter.get("/orders/:id", getOrderById)
ordersRouter.get("/clients/:id/orders", getOrdersByClient)
ordersRouter.delete("/orders/:id", deleteOrderById)

export default ordersRouter

