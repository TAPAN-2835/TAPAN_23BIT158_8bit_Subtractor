Here's a `README.md` tailored specifically for your GitHub repo, based on the **RTL2GDSII\_Lab\_notes.pdf**. This version focuses **only on the step-by-step flow** used for your main 8-bit subtractor project and excludes the full adder content.

---

````markdown
# 🔧 RTL to GDSII Flow – 8-bit Subtractor (Synopsys Flow)

This repository documents a complete backend digital design flow for an **8-bit subtractor** implemented using **Synopsys EDA tools**. The project follows the full **RTL to GDSII** cycle, including synthesis, floorplanning, placement, CTS, routing, and STA analysis.

---

## 📁 Project Overview

- **Design:** 8-bit Subtractor (in Verilog)
- **Tools Used:** Synopsys VCS, Design Compiler, IC Compiler II, PrimeTime
- **Flow Type:** ASIC Digital Backend Design
- **Output:** Synthesized Netlist, GDSII-ready physical layout, STA reports

---

## 🛠️ Step-by-Step Design Flow

### ✅ 1. Environment Setup

Add Synopsys tools to your terminal PATH via `~/.bashrc`:
```bash
export VCS_HOME=/path/to/vcs
export DC_HOME=/path/to/dc
export ICC_HOME=/path/to/icc2
export PRIME_HOME=/path/to/prime
export PATH="$VCS_HOME/bin:$DC_HOME/bin:$ICC_HOME/bin:$PRIME_HOME/bin:$PATH"
````

Verify installation:

```bash
which vcs
which dc_shell
which icc2_shell
which pt_shell
```

---

### 📌 2. RTL Design and Simulation

* Create Verilog design: `sub_8bit_rtl.v`
* Create testbench: `sub_8bit_tb.v`

#### Compile and Simulate using VCS:

```bash
vcs -full64 sub_8bit_rtl.v sub_8bit_tb.v -debug_access+all
./simv
verdi -ssf novas.fsdb
```

---

### 🧪 3. Synthesis using Design Compiler

#### Step-by-step:

```bash
cd DC/
vi run_dc.tcl   # Edit script for subtractor
dc_shell
start_gui       # Optional GUI
source run_dc.tcl
```

#### Output:

* Synthesized netlist: `full_adder.mapped.v` *(customize name for subtractor)*
* Timing reports: `report_qor`, `report_timing`

---

### 🏗️ 4. Floorplanning (IC Compiler II)

#### Script: `floorplan.tcl`

```bash
icc2_shell
start_gui
cd ICCII/scripts
source floorplan.tcl
```

Use different floorplan scenarios (L-shape, T-shape, U-shape) by changing commands in the script.

---

### 🔋 5. Power Planning

#### Script: `power_planning.tcl`

```bash
source power_planning.tcl
```

Includes core rings and metal stripes for IR drop reduction.

---

### 📍 6. Placement

#### Script: `placement.tcl`

```bash
source placement.tcl
```

Optimizes cell location, ensures routability, prepares for CTS.

---

### ⏱️ 7. Clock Tree Synthesis (CTS)

#### Script: `clock.tcl`

```bash
source clock.tcl
```

Builds balanced clock network to minimize skew and latency.

---

### 🔗 8. Routing

#### Script: `route.tcl`

```bash
source route.tcl
```

Performs global and detailed routing, checks DRC compliance.

---

### 📉 9. Static Timing Analysis (STA)

Use **PrimeTime** to validate final design timing:

```bash
pt_shell
read_parasitics -format spef ...
report_timing
report_power
```

---

## 📦 Project ZIP

* Download the full design files and scripts here: [`RTL2GDSII.zip`](./RTL2GDSII.zip)

---

## 📚 Folder Structure

```
├── verilog/            # RTL design and testbench
├── DC/                 # Synthesis scripts and results
├── ICCII/scripts/      # Floorplan, power, placement, CTS, routing TCLs
├── results/            # Output netlists, reports
├── constraints/        # SDC files for timing constraints
├── RTL2GDSII.zip       # Complete offline project package
└── README.md
```

---

## 🙌 Acknowledgements

This project was developed during the **RTL to GDSII Workshop at PDEU**, using academic licenses of Synopsys EDA tools.

Mentors & Contributors:

* Puneet Mittal Sir
* Dr. Dhaval Pujara
* Faculty Team (ICT & EC)

---

> 📍 For academic learning purposes only. For questions or collaboration, feel free to raise an issue or fork this repo.
