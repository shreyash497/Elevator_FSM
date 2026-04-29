#  2-Floor Elevator FSM (Verilog)

## 📌 Project Overview

This project implements a **2-floor elevator system** using a **Finite State Machine (FSM)** in Verilog.
The design is simulated and synthesized using **Xilinx Vivado**.

---

## 🧠 FSM Design

### States:

* **IDLE** → Waiting for request
* **UP** → Moving from floor 0 to 1
* **DOWN** → Moving from floor 1 to 0
* **OPEN** → Door open state

---

## ⚙️ Inputs & Output

| Signal   | Description         |
| -------- | ------------------- |
| clk      | System clock        |
| reset    | Reset signal        |
| req_up   | Request to go up    |
| req_down | Request to go down  |
| floor    | Current floor (0/1) |

---

## 🔁 State Transitions

* IDLE → UP (if req_up & floor=0)
* IDLE → DOWN (if req_down & floor=1)
* UP → OPEN
* DOWN → OPEN
* OPEN → IDLE


## 🛠 Tools Used

* Verilog HDL
* Xilinx Vivado

---

## ⚠️ Limitations

* Only supports 2 floors
* No delay for door/movement
* No request queue

---

## 🚀 Future Improvements

* Add multiple floors
* Add timing using counters
* Add request scheduling
