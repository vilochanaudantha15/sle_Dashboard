import express from "express";
import {
  addDailyData,
  getAllDailyData,
} from "../controllers/aluminumController.js";

const router = express.Router();

// Route to add daily data
router.post("/", addDailyData);
router.get("/labour", getAllDailyData);

// Route to fetch all daily data
router.get("/", getAllDailyData);

export default router;