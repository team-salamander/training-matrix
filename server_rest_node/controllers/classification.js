const {validationResult} = require('express-validator/check');
const Position = require('../models/position');
const Certification = require('../models/certification');
const CertificationDetails = require('../models/certification_detail');
const Course = require('../models/course');
const PositionDetails = require('../models/position_detail');
const Skills = require('../models/skill');
const SkillDetails = require('../models/skill_detail');
const TrainingDetails = require('../models/training_detail');

exports.getPositions = (req, res, next) => {
    Position.findAll({
        include: [{
            model: PositionDetails,
            include: [{
                model: Skills,
                include: [{
                    model: SkillDetails,
                    include: [{
                        model: Certification,
                        include: [{
                            model: CertificationDetails,
                            include: [{
                                model: Course
                            }]
                        }]
                    }, {
                        model: TrainingDetails,
                        include: [Course]
                    }]
                }]
            }]
        }]
    })
        .then(positions => {
            res.status(200).json({positions: positions});
        })
        .catch(err => console.log(err));


};


exports.getPositionById = (req, res, next) => {
    if(req.query.params === undefined){
        Position.findAll({
            include: [{
                model: PositionDetails,
                where: {position_id: +req.param('id')},
                include: [{
                    model: Skills,
                    include: [{
                        model: SkillDetails,
                        include: [{
                            model: Certification,
                            include: [{
                                model: CertificationDetails,
                                include: [{
                                    model: Course
                                }]
                            }]
                        }, {
                            model: TrainingDetails,
                            include: [Course]

                        }]
                    }]
                }]
            }]
        })
            .then(positions => {
                res.status(200).json({positions: positions});
            })
            .catch(err => console.log(err));
    } else {

        const filteredSkills = JSON.parse(req.query.params);
        console.log(filteredSkills);
        console.log('length: ' + filteredSkills.skill_ids.length);
        if(filteredSkills.skill_ids.length > 0){
            Position.findAll({
                include: [{
                    model: PositionDetails,
                    where: {position_id: +req.param('id')},
                    include: [{
                        model: Skills,
                        where: {id: filteredSkills.skill_ids},
                        include: [{
                            model: SkillDetails,
                            include: [{
                                model: Certification,
                                include: [{
                                    model: CertificationDetails,
                                    include: [{
                                        model: Course
                                    }]
                                }]
                            }, {
                                model: TrainingDetails,
                                include: [Course]

                            }]
                        }]
                    }]
                }]
            })
                .then(positions => {
                    res.status(200).json({positions: positions});
                })
                .catch(err => console.log(err));
        } else {
            Position.findAll({
                include: [{
                    model: PositionDetails,
                    where: {position_id: +req.param('id')},
                    include: [{
                        model: Skills,
                        include: [{
                            model: SkillDetails,
                            include: [{
                                model: Certification,
                                include: [{
                                    model: CertificationDetails,
                                    include: [{
                                        model: Course
                                    }]
                                }]
                            }, {
                                model: TrainingDetails,
                                include: [Course]

                            }]
                        }]
                    }]
                }]
            })
                .then(positions => {
                    res.status(200).json({positions: positions});
                })
                .catch(err => console.log(err));
        }

    }



};


exports.getCertificationsById = (req, res, next) => {
    Certification.findAll({
        include: [{
            model: CertificationDetails,
            include: [Course],
            where: {
                certification_id: +req.param('id')
            }
        }]
    })
        .then(certification => {
            res.status(200).json({certification: certification});
        })
        .catch(err => console.log(err));
};

exports.getSkillDetails = (req, res, next) => {
    SkillDetails.findAll({
        include: [{
            model: TrainingDetails,
            include: [Course]
        }, {
            model: Certification,
            include: [{
                model: CertificationDetails,
                include: [Course]
            }]
        }]
    })
        .then(sd => {
            res.status(200).json({skill_details: sd});
        })
        .catch(err => console.log(err));
};

exports.getSkills = (req, res, next) => {
    Skills.findAll()
        .then(skills => {
            res.status(200).json({skill: skills});
        })
        .catch(err => console.log(err));
};

