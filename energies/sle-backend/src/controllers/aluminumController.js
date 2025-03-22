import AluminumModel from "../models/aluminumModel.js";

// Controller to add daily data
export const addDailyData = async (req, res) => {
  try {
    const { date, name, task } = req.body;

    if (!date || !name || !task) {
      return res.status(400).json({ message: "All fields are required" });
    }

    const insertId = await AluminumModel.addDailyData(date, name, task);
    res.status(201).json({ message: "Data added successfully", id: insertId });
  } catch (error) {
    console.error("Error adding data:", error);
    res.status(500).json({ message: "Internal Server Error" });
  }
};



// Controller to fetch all daily data or data filtered by date
export const getAllDailyData = async (req, res) => {
  try {
    const { date } = req.query;
    let data;

    if (date) {
      // If a date is provided, filter the records by date
      data = await AluminumModel.getDailyDataByDate(date);
    } else {
      // Fetch all daily data
      data = await AluminumModel.getAllDailyData();
    }

    res.json(data);
  } catch (error) {
    console.error("Error fetching data:", error);
    res.status(500).json({ message: "Internal Server Error" });
  }
};