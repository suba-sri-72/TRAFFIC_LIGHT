# TRAFFIC_LIGHT

# Traffic Light Controller using Verilog HDL

## Project Overview
This project implements a Traffic Light Controller using a Moore Finite State Machine (FSM) in Verilog HDL. It controls traffic signals for two directions: North-South (NS) and East-West (EW).

## Features
- Moore FSM-based design
- Four-state FSM architecture
- Counter-based timing control
- Automatic state transitions
- Independent NS and EW traffic signal outputs
- Synchronous reset
- RTL simulation using QuestaSim

## FSM State Encoding

| State | Encoding | NS Signal | EW Signal |
|---|---|---|---|
| NS_GREEN | 00 | Green | Red |
| NS_YELLOW | 01 | Yellow | Red |
| EW_GREEN | 10 | Red | Green |
| EW_YELLOW | 11 | Red | Yellow |

## State Transition Sequence

NS_GREEN → NS_YELLOW → EW_GREEN → EW_YELLOW → NS_GREEN

## Timing Control

The traffic light controller uses a 5-bit counter for timing control.

- Green signal: 30 clock cycles
- Yellow signal: 5 clock cycles

The counter resets when the current state's timing limit is reached, triggering the next FSM state.

## Output Signals

The controller generates six output signals:

**North-South Direction**
- `ns_red`
- `ns_yellow`
- `ns_green`

**East-West Direction**
- `ew_red`
- `ew_yellow`
- `ew_green`

## Tools Used
- Verilog HDL
- QuestaSim
- GitHub

## Project Files

- `traffic.v` – RTL design
- `traffic_tb.v` – Testbench

## Simulation

The RTL design is simulated using QuestaSim to observe traffic light output sequences and FSM state transitions.

## Learning Outcomes
- FSM design using Verilog HDL
- Moore FSM implementation
- Sequential and combinational logic
- Counter-based timing control
- State transition design
- RTL simulation and debugging

## Author
<img width="1462" height="643" alt="Screenshot 2026-11-17 102801" src="https://github.com/user-attachments/assets/58e29a1d-cc82-44fd-9d3c-9560394c4133" />
<img width="345" height="542" alt="Screenshot 2026-11-17 102950" src="https://github.com/user-attachments/assets/7ddddbb5-786f-409b-8237-d7166085a1ae" />
<img width="376" height="610" alt="Screenshot 2026-11-17 102919" src="https://github.com/user-attachments/assets/a276945a-4521-4e19-940c-0ee8b2984e22" />


