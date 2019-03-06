const express = require('express');
const bodyParser = require('body-parser');
const sequelize = require('./util/database');
const Certification = require('./models/certification');
const CertificationDetails = require('./models/certification_detail');
const Course = require('./models/course');
const Position = require('./models/position');
const PositionDetails = require('./models/position_detail')
const Skill = require('./models/skill');
const SkillDetails = require('./models/skill_detail');
const TrainingDetails = require('./models/training_detail');
const myPort = require('./util/database');
const config = require('./config');


// const feedRoutes = require('./routes/feed');
const classificationRoutes = require('./routes/classification');
const app = express();

Certification.hasMany(CertificationDetails, {foreignKey: 'certification_id', sourceKey: 'id'});
CertificationDetails.belongsTo(Certification);
CertificationDetails.hasOne(Course, {foreignKey: 'id'});

// relationship between Position / PositionDetails
Position.hasMany(PositionDetails, {foreignKey: 'position_id', sourceKey: 'id'});
PositionDetails.belongsTo(Position);

// relationship between PositionDetails / Skills
Skill.hasOne(PositionDetails, {foreignKey: 'skill_id'});
PositionDetails.belongsTo(Skill);


// relationship between Skill / SkillDetails
Skill.hasMany(SkillDetails, {foreignKey: 'skill_id'});
SkillDetails.belongsTo(Skill);

// relationship between Certification / SkillDetail
Certification.hasOne(SkillDetails, {foreignKey: 'certification_id'});
SkillDetails.belongsTo(Certification, {foreignKey: 'certification_id'});

// relationship between TrainingDetails / SkillDetails
TrainingDetails.hasOne(SkillDetails, {foreignKey: 'training_id'});
SkillDetails.belongsTo(TrainingDetails, {foreignKey: 'training_id'});

// relationship between TrainingDetails / Course
TrainingDetails.hasMany(Course, {foreignKey: 'id', sourceKey: 'course_id'});
Course.belongsTo(TrainingDetails, {foreignKey: 'id'});


// app.use(bodyParser.urlencoded()); // x-www-form-urlencoded <form>
app.use(bodyParser.json()); // application/json

app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'OPTIONS, GET, POST, PUT, PATCH, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    next();
});

app.use(config.urlPathBase, classificationRoutes);

sequelize.sync()
    .then(() => {
        app.listen(config.port, "127.0.0.1");
    })
    .catch(err => {
        console.log(err);
    });

