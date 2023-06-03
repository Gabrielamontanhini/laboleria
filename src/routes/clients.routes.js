import { Router } from "express";
import { postClients } from "../controllers/clients.controllers.js";

const clientsRouter = Router()

clientsRouter.post("/clients", postClients)

export default clientsRouter