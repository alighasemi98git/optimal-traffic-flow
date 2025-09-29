# Optimal Traffic Flow

This project addresses the **System-Optimal Traffic Assignment (SOTA)** problem for urban networks, applied to a case study of the Stockholm inner region. Using **nonlinear programming techniques**, the goal is to minimize total travel time by modeling congestion dynamics and evaluating strategies for capacity improvements.

## Project Overview

* **Problem Type:** Traffic assignment optimization
* **Context:** Urban transportation planning
* **Case Study:** 14-node abstraction of Stockholm’s central and suburban regions
* **Key Features:**

  * Free-flow (linear programming) model
  * Congestion-aware (nonlinear programming) model using Davidson’s volume-delay function
  * Convex optimization formulation ensuring global optimality
  * Analysis of bottlenecks and road capacity improvements

## Models

1. **Free-Flow Model (LP)**

   * Ignores congestion effects
   * Reduces to multiple shortest-path problems
   * Provides a baseline for ideal travel times

2. **Congestion Model (NLP)**

   * Incorporates Davidson’s delay function
   * Captures rising travel times as flows approach capacity
   * Formulated as a convex NLP ensuring global solutions

## Results

* Congestion shifts flows away from oversaturated arcs, redistributing traffic to alternative routes
* Key congested links identified: arcs (4,5), (5,0), (7,0), (8,5)
* Capacity improvements on these arcs reduce overall travel times
* Model predictions align with observed traffic patterns in Stockholm

## Potential Improvements

* Incorporating fairness objectives (e.g., minimizing maximum individual travel time)
* Including environmental factors such as **CO₂ emissions** or fuel consumption
* Modeling **time-dependent demand** and **road pricing** for more realism

## Repository Structure

```
.
├── models/
│   ├── freeflow_model.gms      # GAMS implementation of LP traffic assignment
│   ├── congestion_model.gms    # GAMS implementation with nonlinear congestion effects
│
├── results/
│   ├── freeflow_results.txt    # Output summary for free-flow model
│   ├── congestion_results.txt  # Output summary for congestion model
│
├── report/
│   └── Traffic_Flow_Report.pdf # Full academic report
│
└── README.md
```

## Usage Instructions

### Requirements

* [GAMS](https://www.gams.com/download/) with solvers such as **CPLEX** (LP) and **SNOPT** (NLP)

### Running the Models

1. Clone this repository:

   ```bash
   git clone https://github.com/<your-username>/optimal-traffic-flow.git
   cd optimal-traffic-flow/models
   ```

2. Run the **free-flow model**:

   ```bash
   gams freeflow_model.gms
   ```

3. Run the **congestion model**:

   ```bash
   gams congestion_model.gms
   ```

4. Check results in the `results/` directory.

## Technologies

* **GAMS**: for LP and NLP implementations
* **Optimization Methods**: linear programming, convex nonlinear programming
* **Solvers:** CPLEX, SNOPT

## Authors

* Lucia Aguilera Alvarado ([luciaaa@kth.se](mailto:luciaaa@kth.se))
* Lisa Björklund ([lisabjor@kth.se](mailto:lisabjor@kth.se))
* Ali Ghasemi ([aghasemi@kth.se](mailto:aghasemi@kth.se))

*KTH Royal Institute of Technology – SF2822 Applied Nonlinear Optimization (2024/2025)*

---

📄 This repository contains the models, results, and report analyzing optimal traffic flow in an urban network under congestion.
