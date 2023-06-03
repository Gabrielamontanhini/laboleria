import { postClientsDB } from "../repositories/clients.repository"


export async function postClients(req, res){
    try{
await postClientsDB(req.body)
return res.sendStatus(201)
    }
    catch (err) {
        res.status(500).send(err.message)
    }
}
