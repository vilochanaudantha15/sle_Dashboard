import express from "express";
import {
  addDailyData,
  getAllDailyData,
} from "../controllers/mempController.js";

const router = express.Router();

// Route to add daily data
router.post("/", addDailyData);

// Route to fetch all daily data
router.get("/", getAllDailyData);

export default router;
