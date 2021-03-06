const { validationResult } = require('express-validator/check');
const Product = require('../models/product');

exports.getPosts = (req, res, next) => {
    res.status(200).json({
        posts: [{
            _id: '1',
            title: 'First Post',
            content: 'This is the first post!',
            imageUrl: 'images/duck.jpg',
            creator: {
                name: 'Noel'
            },
            createdAt: new Date()
        }]
    });
};

exports.getProducts = (req, res, next) => {
    Product.findAll()
        .then(products => {
            res.status(200).json({products: products});
        })
        .catch(err => console.log(err));
};

exports.createPost = (req, res, next) => {
    const errors = validationResult(req);
    if(!errors.isEmpty()){
        return res.status(422).json({
            message: 'validation failed, entered data is incorrect',
            errors: errors.array()
        });
    }
    const title = req.body.title;
    const content = req.body.content;
    // Create post in db
    res.status(201).json({
        message: 'Post created successfully!',
        post: {
            _id: new Date().toISOString(),
            title: title,
            content: content,
            creator: {
                name: 'Noel'
            },
            createdAt: new Date()
        }
    });
};
