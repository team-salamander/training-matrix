const Sequelize = require('sequelize');

const sequelize = require('../util/database');

const SkillDetail = sequelize.define( 'skill_details', {
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
    certification_id: {
        type: Sequelize.INTEGER,
        allowNull: true
    },
    training_id: {
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

module.exports = SkillDetail;