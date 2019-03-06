const express = require('express');
const { body } = require('express-validator/check')

const classificationController = require('../controllers/classification');

const router = express.Router();


// GET /classification/positions
router.get('/positions', classificationController.getPositions);

// GET /classification/positions
router.get('/positions/:id', classificationController.getPositionById);

// GET /classification/certifications
router.get('/certifications/:id', classificationController.getCertificationsById);

// GET /classification/certifications
router.get('/skills', classificationController.getSkills);
router.get('/skilldetails', classificationController.getSkillDetails);

module.exports = router;