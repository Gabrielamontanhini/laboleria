import { db } from "../database/database.connection.js";

export async function postClientsDB(body){
    const {name, address, phone}= body
    const resultado = db.query(`
    INSERT INTO clients (name, address, phone) 
    VALUES ($1, $2, $3);`, [name, address, phone])
    return resultado
}