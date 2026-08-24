# Bundled RTL Examples

The repository contains one small project-owned smoke design and three
OpenCores designs commonly distributed with IWLS benchmark collections.

| Design | Top module | RTL files | Clock period | Origin |
| --- | --- | ---: | ---: | --- |
| simple | simple_top | 1 | 5.0 ns | DC Agent smoke design |
| aes_cipher | aes_cipher_top | 5 | 5.0 ns | OpenCores AES core |
| sasc | sasc_top | 4 | 5.0 ns | OpenCores SASC core |
| tv80 | tv80s | 5 | 5.0 ns | OpenCores TV80 core |

Each design directory contains rtl and constraints.sdc. 

Each OpenCores directory also contains a saved optimized synthesis script named
DESIGN_optimized.tcl. Its RTL and SDC paths are resolved relative to the script,
so it does not depend on the original experiment workspace.

Preview all examples without invoking external tools:

    ./dc-agent batch \
      --csv configs/design_summary.csv \
      --clock-period 0 \
      --dry-run \
      --exclude-designs ""

Run a saved optimized strategy directly from the repository root:

    DC_AGENT_DC_LIB_DIR="$PWD/lib/nangate45/freepdk-45nm" \
      dc_shell -f examples/aes_cipher/aes_cipher_optimized.tcl

Run one example through the complete flow:

    ./dc-agent optimize \
      --rtl-path examples/aes_cipher/rtl \
      --top-module aes_cipher_top \
      --design-name aes_cipher \
      --sdc-path examples/aes_cipher/constraints.sdc \
      --clock-period 5.0 \
      --output-dir ./dc_agent_output/aes_cipher \
      --work-dir ./work/aes_cipher
