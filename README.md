# About
This repository provides detector geometry, simulation and reconstruction parameters, and a GNU make-based workflow for carrying out the simulation and reconstruction for the SiFCC detector.

# Example usage with Docker
1. Clone the repository, and cd into it
2. Build an image based on the fpadsim environment, and run a container...
```shell
docker build -t sifcc .
docker run -it sifcc
```
3. Initialize the geometry
```shell
cd $WORKFLOW_PATH
make
```
4. Get truth-level files for input...
```shell
cd input
hs-get tev14pp_qcd_pythia8_pt1500
cd ..
```
5. Run parallel simulation/reconstruction on 20 events (WARNING: this is for systems with high core count and significant memory.  Run time is ~20 min on a 20 core / 40 thread Intel system)...
```shell
echo 1 > nEventsPerRun
make -j20 hepsim
```

The result of the above workflow is a set of LCIO files and log files in the output directory.
