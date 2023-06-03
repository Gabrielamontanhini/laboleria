

export async function postCakes(req, res){
    try{}
    catch (err) {
        res.status(500).send(err.message)
    }
}