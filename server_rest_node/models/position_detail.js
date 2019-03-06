const Sequelize = require('sequelize');

const sequelize = require('../util/database');

const PositionDetail = sequelize.define( 'position_details', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true
    },
    position_id: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    skill_id: {
        type: Sequelize.INTEGER,
        allowNull: false
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

module.exports = PositionDetail;