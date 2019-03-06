const Sequelize = require('sequelize');

const sequelize = require('../util/database');

const TrainingDetail = sequelize.define( 'training_details', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true
    },
    skill_id: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    course_id: {
        type: Sequelize.INTEGER,
        allowNull: true
    },
    created_at: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
        allowNull: false
    },
    updated_at: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
        allowNull: false
    }
}, { underscored: true});

module.exports = TrainingDetail;