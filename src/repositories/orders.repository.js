import { db } from "../database/database.connection.js";

export async function postOrderDB(body){
    const {clientId, cakeId, quantity, totalPrice} = body
    const resultado = await db.query(`INSERT INTO orders ("clientId", "cakeId", quantity, "totalPrice")
    VALUES ($1, $2, $3, $4);`, [clientId, cakeId, quantity, totalPrice])
    return resultado
}

export async function getAllOrdersDB(){
    const resultado = await db.query(`SELECT * FROM orders;`)
    return resultado
}

export async function getOrderByIdDB(id){
    const resultado = await db.query(`SELECT * FROM orders WHERE id=$1`, [id])
    return resultado
}

export async function getOrdersOfClientDB(id){
    const resultado = await db.query(`SELECT * FROM orders WHERE "clientId"=$1`, [id])
    return resultado
}