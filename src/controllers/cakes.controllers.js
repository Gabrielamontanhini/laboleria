import { postCakesDB } from "../repositories/cakes.repository.js"


export async function postCakes(req, res){
    try{
        await postCakesDB(req.body)
        return res.sendStatus(201)
    }
    catch (err) {
        res.status(500).send(err.message)
    }
}