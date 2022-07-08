const req = require("express/lib/request");
const fs = require("fs");

let productosEnJSON = fs.readFileSync(__dirname + "/../data/Productos.json","utf-8");
let productos = JSON.parse(productosEnJSON);

const db = require('../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");

const controller = {

//Controladores para desplegar los productos

    list: function(req, res){
        db.products.findAll({
            where: {
                active: 1
            }
        })
            .then(function(products) {
                res.status(200).render("./products/ProductList", {productos: products})
                console.log(products);
            })
            .catch(function(err) {
                console.log(err);
                res.status(500).render('./error/error-general')
            })

    },
    detalle: function(req, res){
        db.products.findOne({
            where: {
                id: req.params.id
            },
            include: ['p_category', 'p_cloth', 'p_color', 'p_size', 'p_type']
        })
            .then(function(producto) {
                res.status(200).render("./products/ProductDetail", {producto: producto});
            })
            .catch(function(err) {
                console.log(err);
                res.status(500).render('./error/error-general');
            })
    },

//Controladores para el carrito

    cart: function(req, res){
        res.status(200).render("./products/ProductCart");
    },

//Controladores para la seccion de agregar productos

    add: function(req, res){
        res.status(200).render("./products/ProductAdd");
    },
    added: function(req, res){
        const body = req.body;
        let prodAdded = {
            id: 1,
            name: body.txtAddName,
            description: body.txtAddDesc,
            category: body.radioAddCat,
            price: body.numAddPrice,
            type: body.radioAddType,
            size: body.radioAddSize,
            waist: body.txtAddWaist,
            chest: body.txtAddChest,
            back: body.txtAddBack,
            height: body.txtAddHeight,
            cloth: body.radioAddCloth,
            color: body.radioAddColor,
            code: body.txtAddCode,
            img1: req.files[0].filename,
            img2: req.files[1].filename,
            img3: req.files[2].filename,
            img4: req.files[3].filename
        }
        //
        if(productos.length > 0){
            prodAdded.id = productos.length + 1;
        }
        //
        productos.push(prodAdded);
        let prodEnJson = JSON.stringify(productos);
        fs.writeFileSync(__dirname + "/../data/Productos.json", prodEnJson);
        res.status(201).redirect("/");
    },

//Controladores para la seccion de edicion de productos

    edit: function(req, res){
        res.status(200).render("./products/ProductEdit", {productos: productos[req.params.id-1]});
    },
    save: function(req, res){
        const body = req.body
        let prodNuevo = {
            id: parseInt(req.params.id),
            name: body.txtNuevoName,
            description: body.txtNuevoDesc,
            category: body.radioNuevoCat,
            price: body.numNuevoPrice,
            type: body.radioNuevoType,
            size: body.radioNuevoSize,
            waist: body.txtNuevoWaist,
            chest: body.txtNuevoChest,
            back: body.txtNuevoBack,
            height: body.txtNuevoHeight,
            cloth: body.radioNuevoCloth,
            color: body.radioNuevoColor,
            code: body.txtNuevoCode,
            img1: req.files[0].filename,
            img2: req.files[1].filename,
            img3: req.files[2].filename,
            img4: req.files[3].filename
        }
        productos.splice(prodNuevo.id-1, 1, prodNuevo);
        let productosEditados = JSON.stringify(productos);
        fs.writeFileSync(__dirname + "/../data/Productos.json", productosEditados);
        res.status(201).redirect("/");
    },

//Controladores para borrar productos

    delete: function(req, res){

        //Encontrar el item y borrarlo del array
        let id = req.params.id;
        productos.splice(id-1, 1);

        //Recorrer el array y arreglar los id 
        for (let i = 0; i < productos.length; i++){
            productos[i].id = i+1;
        }

        let productosEditados = JSON.stringify(productos);
        fs.writeFileSync(__dirname + "/../data/Productos.json", productosEditados);
        res.status(202).redirect("/admin");
    }
}

module.exports = controller;