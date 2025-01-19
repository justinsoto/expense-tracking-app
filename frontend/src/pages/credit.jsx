import React, { useState, useEffect } from "react";
import Navbar from "../components/navbar.jsx";
import "../styles/credit.css";
import {
  PieChart,
  Pie,
  Cell,
  Tooltip,
  Legend,
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
} from "recharts";

const Credit = () => {
  const [transactions, setTransactions] = useState([]);
  const [balance, setBalance] = useState(0);
  const [budget, setBudget] = useState(0);
  const [remainingBudget, setRemainingBudget] = useState(0);

  useEffect(() => {
    // Mock API data
    const fetchTransactions = async () => {
      const mockTransactions = [
        { id: 1, transaction: "Uber", amount: 5.4, date: "2025-04-24", category: "Travel" },
        { id: 2, transaction: "Payment", amount: 25.0, date: "2025-04-24", category: "Payment" },
        { id: 3, transaction: "United Airlines", amount: -500.0, date: "2025-04-22", category: "Travel" },
        { id: 4, transaction: "McDonalds", amount: 12.0, date: "2025-04-21", category: "Food and Drink" },
        { id: 5, transaction: "Starbucks", amount: 4.33, date: "2025-04-21", category: "Food and Drink" },
        { id: 6, transaction: "SparkFun", amount: 89.4, date: "2025-04-20", category: "Shopping" },
        { id: 7, transaction: "Interest Payment", amount: -4.22, date: "2025-04-19", category: "Transfer" },
      ];

      const mockBalance = 110.0;

      setTransactions(mockTransactions);
      setBalance(mockBalance);
    };

    fetchTransactions();
  }, []);

  // Aggregate data for visualizations
  const spendingByCategory = transactions.reduce((acc, transaction) => {
    const { category, amount } = transaction;
    acc[category] = (acc[category] || 0) + Math.abs(amount);
    return acc;
  }, {});

  const spendingByCategoryData = Object.entries(spendingByCategory).map(([name, value]) => ({
    name,
    value,
  }));

  const spendingTrendsData = transactions.map((transaction) => ({
    date: transaction.date,
    amount: transaction.amount,
  }));

  // Calculate total spending
  const totalSpending = transactions.reduce((sum, transaction) => sum + Math.abs(transaction.amount), 0);

  // Calculate remaining budget
  useEffect(() => {
    setRemainingBudget(Math.max(budget - totalSpending, 0));
  }, [transactions, budget]);

  // Handle budget form submission
  const handleBudgetSubmit = (e) => {
    e.preventDefault();
    const newBudget = parseFloat(e.target.budget.value);
    if (!isNaN(newBudget) && newBudget > 0) {
      setBudget(newBudget);
      e.target.reset(); // Clear the form
    } else {
      alert("Please enter a valid budget amount.");
    }
  };

  const COLORS = ["#8884d8", "#82ca9d", "#ffc658", "#ff8042", "#d0ed57", "#a4de6c"];

  return (
    <>
      <Navbar />
      <div className="credit-page">
        <h1>Transaction History</h1>
        <p>See your bank details and transactions.</p>

        {/* Budget Target Form */}
        <div className="budget-section">
          <h2>Set Your Monthly Budget</h2>
          <form onSubmit={handleBudgetSubmit}>
            <input
              type="number"
              name="budget"
              placeholder="Enter your budget"
              min="0"
              step="0.01"
              required
            />
            <button type="submit">Set Budget</button>
          </form>
          {budget > 0 && (
            <div className="budget-details">
              <p><strong>Budget:</strong> ${budget.toFixed(2)}</p>
              <p><strong>Remaining Budget:</strong> ${remainingBudget.toFixed(2)}</p>
            </div>
          )}
        </div>

        {/* Balance Overview */}
        <div className="balance-overview">
          <div>
            <h2>Plaid Checking</h2>
            <p>Plaid Gold Standard 0% Interest Checking</p>
            <p>●●●● ●●●● ●●●● 0000</p>
          </div>
          <div className="balance">
            <p>Current balance</p>
            <h2>${balance.toFixed(2)}</h2>
          </div>
        </div>

        {/* Visualizations */}
        <div className="visualizations">
          <div className="chart-container">
            <h3>Spending by Category</h3>
            <PieChart width={400} height={300}>
              <Pie
                data={spendingByCategoryData}
                dataKey="value"
                nameKey="name"
                cx="50%"
                cy="50%"
                outerRadius={100}
                fill="#8884d8"
                label
              >
                {spendingByCategoryData.map((entry, index) => (
                  <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                ))}
              </Pie>
              <Tooltip />
              <Legend />
            </PieChart>
          </div>

          <div className="chart-container">
            <h3>Spending Trends</h3>
            <LineChart width={500} height={300} data={spendingTrendsData}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="date" />
              <YAxis />
              <Tooltip />
              <Line type="monotone" dataKey="amount" stroke="#82ca9d" />
            </LineChart>
          </div>
        </div>

        {/* Transaction Table */}
        <table className="transaction-table">
          <thead>
            <tr>
              <th>Transaction</th>
              <th>Amount</th>
              <th>Date</th>
              <th>Category</th>
            </tr>
          </thead>
          <tbody>
            {transactions.map((transaction) => (
              <tr key={transaction.id}>
                <td>{transaction.transaction}</td>
                <td className={transaction.amount < 0 ? "negative-amount" : "positive-amount"}>
                  ${transaction.amount.toFixed(2)}
                </td>
                <td>{transaction.date}</td>
                <td>{transaction.category}</td>
              </tr>
            ))}
          </tbody>
        </table>

        {/* Budget Analysis */}
        <div className="budget-analysis" style={{ marginTop: "30px" }}>
          <h3>Budget Analysis</h3>
          <p>
            You have spent <strong>${totalSpending.toFixed(2)}</strong> out of your budget of{" "}
            <strong>${budget.toFixed(2)}</strong>.
          </p>
          <p>
            {remainingBudget > 0
              ? `You still have $${remainingBudget.toFixed(2)} remaining in your budget. Keep it up!`
              : "You have exceeded your budget. Consider adjusting your expenses."}
          </p>
        </div>
      </div>
    </>
  );
};

export default Credit;
