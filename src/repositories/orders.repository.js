import { db } from "../database/database.connection.js";

export async function postOrderDB(body){
    const {clientId, cakeId, quantity, totalPrice} = body
    const resultado = await db.query(`INSERT INTO orders ("clientId", "cakeId", quantity, "totalPrice")
    VALUES ($1, $2, $3, $4);`, [clientId, cakeId, quantity, totalPrice])
    return resultado
}

export async function getAllOrdersDB(){
    const resultado = await db.query(`
    SELECT orders.id AS pedido, clients.name AS cliente, cakes.name AS bolo, cakes.price AS valor, orders."createdAt" AS dia, orders."totalPrice" as total
    FROM orders
    JOIN clients ON orders."clientId"=clients.id
    JOIN cakes ON orders."cakeId"=cakes.id;`)
    return resultado
}

export async function getOrderByIdDB(id){
    const resultado = await db.query(`SELECT orders.id AS pedido, clients.name AS cliente, cakes.name AS bolo, cakes.price AS valor, orders."createdAt" AS dia, orders."totalPrice" as total
    FROM orders
    JOIN clients ON orders."clientId"=clients.id
    JOIN cakes ON orders."cakeId"=cakes.id
    WHERE orders.id=$1;`, [id])
    return resultado
}

export async function getOrdersOfClientDB(id){
    const resultado = await db.query(`SELECT orders.id AS pedido, clients.name AS cliente, cakes.name AS bolo, cakes.price AS valor, orders."createdAt" AS dia, orders."totalPrice" as total
    FROM orders
    JOIN clients ON orders."clientId"=clients.id
    JOIN cakes ON orders."cakeId"=cakes.id
    WHERE clients.id=$1`, [id])
    return resultado
}