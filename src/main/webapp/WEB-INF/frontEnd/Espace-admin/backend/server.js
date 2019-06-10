import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';
import mysql from 'mysql';
const app=express();
const router =express.Router;
app.use(cors());
app.use(bodyParser.json());
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'reservation'
})

function handleError(res, reason, message, code) {
    console.log("ERROR: " + reason);
    res.status(code || 500).json({ "error": message });
}

connection.connect(err => { if (err) console.log(err) });
app.get('/:class/p', (req, res) => {
    let dataClass = req.params["class"]
    connection.query("SELECT id_personne,cin,date_naissance,email,etat,image,nom,pays,prenom,telephone,type,mdp from " + dataClass, (err, result) => {
        if(err) handleError(res, err.message, "Failed to get data of type : " + dataClass);
        else{
            res.status(200).json(result)
        }
    })
})



app.get('/:class/a/p', (req, res) => {
    let dataClass = req.params["class"]
    connection.query("SELECT id_personne,cin,date_naissance,email,etat,image,nom,pays,prenom,telephone,type,mdp from " + dataClass + " where type= 'admin' ", (err, result) => {
        if(err) handleError(res, err.message, "Failed to get data of type : " + dataClass);
        else{
            res.status(200).json(result)
        }
    })
})


app.get('/:class/u/:id/:nom/:prenom/:cin/:email/:telephone/:pays/:mdp', (req, res) => {
    let dataClass = req.params["class"]
    let id = req.params["id"]
    let nom = req.params["nom"]
    let prenom = req.params["prenom"]
    let cin = req.params["cin"]
    let email = req.params["email"]
    let telephone = req.params["telephone"]
    let mdp = req.params["mdp"]
    let pays = req.params["pays"]
    connection.query("Update " + dataClass + " set cin = ? , email = ? , nom = ? , pays = ? , prenom = ? , telephone = ? , mdp = ?  where id_personne = ? ",[cin , email , nom , pays , prenom , telephone , mdp , id], (err, result) => {
        if(err) handleError(res, err.message, "Failed to get data of type : " + dataClass);
        else{
            res.status(200).json(result)
        }
    })
})

app.get('/:class/p/change/:id/:n', (req, res) => {
    let dataClass = req.params["class"]
    let id = req.params["id"]
    let n = req.params["n"]
    var newData = req.body;
 if(n==0)
 {
    connection.query("Update "+ dataClass + " set etat = ? where id_personne = ?", [n+1,id], (err, result) => {
        if(err) handleError(res, err.message, "Failed to update data of type : " + dataClass);
        else{
            res.status(201).json("success 0  :::"+id+"n : "+n);
        }
    })
 }
 else{
    connection.query("Update "+ dataClass + " set etat = ? where id_personne = ?", [n-1,id], (err, result) => {
        if(err) handleError(res, err.message, "Failed to update data of type : " + dataClass);
        else{
            res.status(201).json("success 1  :::"+id+"n : "+n);
        }
    })
 }
})


app.get('/:class/h', (req, res) => {
    let dataClass = req.params["class"]
    connection.query("SELECT id_hotel,adresse,date_creation,description,email,etoiles,pays,raison_social,telephone,ville from " + dataClass, (err, result) => {
        if(err) handleError(res, err.message, "Failed to get data of type : " + dataClass);
        else{
            res.status(200).json(result)
        }
    })
})




app.get('/:class/r', (req, res) => {
    let dataClass = req.params["class"]
    connection.query("SELECT reservation.id_reservation,reservation.somme,reservation.etat,reservation.date_debut,reservation.date_fin,personne.nom as nom_client,personne.prenom as prenom_client,personne.telephone as telephone_client,personne.email as email_client,chambre.id_chambre as code_chambre,chambre.description  as description_chambre FROM ((" + dataClass+" INNER JOIN personne ON reservation.id_personne=personne.id_personne ) INNER JOIN  chambre ON reservation.id_chambre=chambre.id_chambre )", (err, result) => {
        if(err) handleError(res, err.message, "Failed to get data of type : " + dataClass);
        else{
            res.status(200).json(result)
        }
    })
})


app.get('/:class/c', (req, res) => {
    let dataClass = req.params["class"]
    connection.query("SELECT chambre.id_chambre,chambre.description,chambre.prix,chambre.promotion,hotel.adresse  as adresse_hotel ,hotel.description as description_hotel FROM " + dataClass+" INNER JOIN hotel ON chambre.id_hotel=hotel.id_hotel ", (err, result) => {
        if(err) handleError(res, err.message, "Failed to get data of type : " + dataClass);
        else{
            res.status(200).json(result)
        }
    })
})


app.post('/:class', (req, res) => {
    let dataClass = req.params["class"]
    var newData = req.body;
    connection.query("Insert into "+ dataClass + "(id, name,status) values (?,?,?)", [newData.id, newData.name, newData.status], (err, result) => {
        if(err) handleError(res, err.message, "Failed to add data of type : " + dataClass);
        else{
            res.status(201).json("success");
        }
    })
})  

app.put('/:class/:id', (req, res) => {
    let dataClass = req.params["class"]
    let id = req.params["id"]
    var newData = req.body;
    connection.query("Update "+ dataClass + " set id = ? , name = ? ,status =? where id = ?", [newData.id, newData.name, newData.status, id], (err, result) => {
        if(err) handleError(res, err.message, "Failed to update data of type : " + dataClass);
        else{
            res.status(201).json("success");
        }
    })
})

app.get('/:class/d/:id', (req, res) => {
    let dataClass = req.params["class"]
    let id_ho = req.params["id"]
    connection.query("Delete from " + dataClass + " where id_hotel = ? ", [id_ho], (err, result) => {
        if(err) handleError(res, err.message, "Failed to delete data of type : " + dataClass + " with id : " +id_ho);
        else{
            res.status(200).json("success"+id_ho);
        }
    })
})



app.get('/:class/p/d/:id', (req, res) => {
    let dataClass = req.params["class"]
    let id_p = req.params["id"]
    connection.query("Delete from " + dataClass + " where id_personne = ?", [id_p], (err, result) => {
        if(err) handleError(res, err.message, "Failed to delete data of type : " + dataClass + " with id : " +id_p);
        else{
            res.status(200).json("success"+id_p);
        }
    })
})

app.get('/:class/c/d/:id', (req, res) => {
    let dataClass = req.params["class"]
    let id_c = req.params["id"]
    connection.query("Delete from " + dataClass + " where id_chambre = ?", [id_c], (err, result) => {
        if(err) handleError(res, err.message, "Failed to delete data of type : " + dataClass + " with id : " +id_c);
        else{
            res.status(200).json("success"+id_c);
        }
    })
})

app.get('/:class/r/d/:id', (req, res) => {
    let dataClass = req.params["class"]
    let id_r = req.params["id"]
    connection.query("Delete from " + dataClass + " where id_reservation = ?", [id_r], (err, result) => {
        if(err) handleError(res, err.message, "Failed to delete data of type : " + dataClass + " with id : " +id_r);
        else{
            res.status(200).json("success"+id_r);
        }
    })
})

app.get('/',(redq,res)=>res.send('Hello word !'));
app.listen(4000,()=>console.log("Express server running on port 4000"));