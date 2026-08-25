# DC Agent Binary Distribution

## Requirements

- 64-bit Linux
- Conda or Miniconda
- A licensed Synopsys Design Compiler installation with dc_shell on PATH. Synopsys Design Compiler 2018 or later is recommended.
- Network access to an OpenAI-compatible streaming chat-completions endpoint

## Files

- dc-agent: environment-aware launcher
- dc-agent.bin: compiled framework executable
- environment.yml and requirements.txt: external dependency specifications
- data, ast_vocab.json, and src/rankers/checkpoints: required model data
- src/partition/scripts: required partition TCL templates
- configs/env.example: LLM environment template
- configs/design_summary.csv: bundled example batch
- examples: simple, AES, SASC, and TV80 RTL/SDC examples
- lib/nangate45/freepdk-45nm: bundled synthesis library
- .synopsys_dc.setup: default DC library setup
- CHECKSUMS.sha256: release integrity hashes

## Create the runtime environment

    conda env create -f environment.yml
    conda activate dc-agent

The environment installs Python 3.10, Yosys, Icarus Verilog, and the required
Python packages. Activate it before every dc-agent invocation. 

## Configure the LLM

    cp configs/env.example .env
    chmod 600 .env

Edit .env, then load it:

    source .env

The required OpenAI-compatible variables are:

    OPENAI_API_KEY
    OPENAI_API_BASE
    OPENAI_MODEL

## Check the executable

Activate the runtime environment first:

    conda activate dc-agent
    ./dc-agent --help
    ./dc-agent optimize --help
    ./dc-agent batch --help

## Run one design

    ./dc-agent optimize \
      --rtl-path examples/aes_cipher/rtl \
      --top-module aes_cipher_top \
      --design-name aes_cipher \
      --sdc-path examples/aes_cipher/constraints.sdc \
      --clock-period 5.0 \
      --objective timing \
      --n-configs 5 \
      --max-root-nodes 3 \
      --max-iterations 5 \
      --max-dc-rounds 1 \
      --output-dir ./dc_agent_output/aes_cipher \
      --work-dir ./work/aes_cipher

## Run the example batch

Preview without DC, Yosys, or API calls:

    ./dc-agent batch \
      --csv configs/design_summary.csv \
      --clock-period 0 \
      --dry-run \
      --exclude-designs ""

Run the batch by removing --dry-run and adding the desired optimization
parameters.

## Local paths

The executable treats its own directory as the release root. It automatically
uses the sibling .synopsys_dc.setup and bundled Nangate45 directory. Use
--dc-setup-source, DC_AGENT_DC_LIB_DIR, DC_ENV_SOURCE, or YOSYS_BIN to override
site-specific tool paths.

## Reports

DC verification workspaces contain dc_start.log and syn_output. Final scripts
emit top-level timing_mixed.rpt, area_mixed.rpt, power_mixed.rpt, qor_mixed.rpt,
and resources_mixed.rpt. 
