# SDCC (Small Device C Compiler)

Extending the SDCC backend to AVR architecture


## User Guide
http://sdcc.sourceforge.net/doc/sdccman.pdf [esp. Section 8.3]

## Methodology
1. Parse source code and build annotated parse tree *(mostly MCU independent)*
   * Syntax & semantic checks
2. Generate intermediate code *(MCU independent)*
   * Assumes an infinite number of registers
3. Standard optimizations *(MCU independent)*
   * Break intermediate code into basic blocks
   * Control flow on basic blocks
   * Dead code elimination
   * Loop optimizations
4. Determine live ranges *(MCU independent)*
   * Used for register allocation
5. Register allocation **[ralloc.h/.c]** *(mostly MCU dependent)*
   * Does tree-decomposition of the control-flow graph, using live ranges
   * Uses port-specific cost function (for instructions under register assignments)
6. Code generation  **[gen.h/.c]** *(entirely MCU dependent)*
   * Maps ICode (intermediate code) operands to assembly operand
7. Peephole optimization **[peep.def** (generic), **peep.h/.c** (MCU-specific)**]**
