import AluminStatusModel from "../models/aluminStatusModel.js";

// Controller to add daily data
export const addDailyData = async (req, res) => {
  try {
    const { date, start, end, status } = req.body;

    if (!date || !status || !end || !status) {
      return res.status(400).json({ message: "All fields are required" });
    }

    const insertId = await AluminStatusModel.addDailyData(
      date,
      start,
      end,
      status
    );
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
      data = await AluminStatusModel.getDailyDataByDate(date);
    } else {
      // Fetch all daily data
      data = await AluminStatusModel.getAllDailyData();
    }

    res.json(data);
  } catch (error) {
    console.error("Error fetching data:", error);
    res.status(500).json({ message: "Internal Server Error" });
  }
};
