import { db } from "../database/database.connection.js";

export async function postCakesDB(body) {
    const { name, price, image, description } = body
    const resultado = await db.query(`INSERT INTO cakes (name, price, image, description)
    VALUES ($1, $2 , $3, $4);`, [name, price, image, description])
    return resultado
}

export async function getCakesDB(){
    const resultado = await db.query(`SELECT * FROM cakes;`)
    return resultado
}