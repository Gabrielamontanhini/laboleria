import { getCakesDB, postCakesDB } from "../repositories/cakes.repository.js"


export async function postCakes(req, res){
    try{
        await postCakesDB(req.body)
        return res.sendStatus(201)
    }
    catch (err) {
        res.status(500).send(err.message)
    }
}
export async function getCakes(req, res){
    try{
const allCakes = await getCakesDB()
return res.send(allCakes.rows).status(200)
    }catch (err) {
        res.status(500).send(err.message)
    }
}