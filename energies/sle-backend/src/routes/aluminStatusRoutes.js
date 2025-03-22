import express from "express";
import {
  addDailyData,
  getAllDailyData,
} from "../controllers/aluminStatusController.js";

const router = express.Router();

// Route to add daily data
router.post("/", addDailyData);

// Route to get all daily data or filtered by date
router.get("/", getAllDailyData);

export default router;
