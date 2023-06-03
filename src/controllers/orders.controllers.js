import { getAllOrdersDB, getOrderByIdDB, getOrdersOfClientDB, postOrderDB } from "../repositories/orders.repository.js"


export async function postOrder(req, res) {
    try {
        await postOrderDB(req.body)
        return res.sendStatus(201)
    } catch (err) {
        res.status(500).send(err.message)
    }
}

export async function getOrders(req, res) {
    try {
        const allOrders = await getAllOrdersDB()
        res.send(allOrders.rows).status(200)
    } catch (err) {
        res.status(500).send(err.message)
    }
}


export async function getOrderById(req, res) {
    try {
        const orderById = await getOrderByIdDB(req.params)
        res.send(orderById.rows[0]).status(200)
    } catch (err) {
        res.status(500).send(err.message)
    }
}

export async function getOrdersByClient(req, res) {
    try {
        const ordersOfClient = await getOrdersOfClientDB(req.params)
        res.send(ordersOfClient.rows).status(200)
    } catch (err) {
        res.status(500).send(err.message)
    }
}