# Vending Machine Module

## Overview
This Verilog module emulates the behavior of a vending machine, facilitating transactions for items priced at 5 or 10 units.

## Description
This module comprises the following key elements:
- **Inputs**:
  - `clk`: Clock signal controlling the module's operations
  - `rst`: Reset signal to initialize or reset the module
  - `in`: Input determining the transaction value (01 for a 5-unit item, 10 for a 10-unit item)
- **Outputs**:
  - `out`: Output signal indicating transaction success (1) or failure (0)
  - `change`: Output signal representing the change given (2'b00 for no change, 2'b01 for 5-unit change, 2'b10 for 10-unit change)
- **States**:
  - `S0`: State 0 signifies no ongoing transaction (0 units)
  - `S1`: State 1 represents a 5-unit transaction
  - `S2`: State 2 indicates a 10-unit transaction

## Functionality
- Upon a reset (`rst`), the module initializes to `S0`.
- It operates as a finite state machine (FSM), transitioning between states based on the input `in`.
- The outputs `out` and `change` update accordingly following each transaction.

## Code Structure
The module adopts a clocked process to manage state transitions and output assignments. It's organized into discrete states `S0`, `S1`, and `S2`, each handling specific transaction scenarios.

## How to Use
1. Instantiate this module within your design environment.
2. Connect relevant signals (`clk`, `rst`, `in`) to the corresponding module inputs.
3. Retrieve and utilize outputs (`out`, `change`) for further processing or interfacing with external components.

## Important Considerations
- **Initialization**: Ensure proper initialization to set the module to the desired starting state.
- **Input Handling**: Validate and handle input signals (`in`) as per the defined transaction values (01 for 5 units, 10 for 10 units).
- **Clock Timing**: Verify that the clock frequency aligns with the module's timing requirements for accurate state transitions.

## Integration Notes
- This module can serve as a component within larger designs, interfacing with other modules or systems requiring vending machine functionality.
- Verify compatibility and interface signals when integrating into broader designs for seamless operation.
