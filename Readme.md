# Kelvin-Helmholtz Instability: Pluto Setup

To produce the data you need to run the simulation. For that, download the `PLUTO` code from [here](http://plutocode.ph.unito.it/Download.html). Then go into the terminal and `cd` to this folder. Then execute `python $PLUTO_DIR/setup.py` where `$PLUTO_DIR` is the directory of the `PLUTO` code. You can keep the settings but select an appropriate makefile for your system and end with `Save Setup`.

Back in the terminal, execute 

    make
    
to compile the code and then run it by executing

    ./pluto
    
This will take a while (~hours). If you don't want to wait that long, you can modify `pluto.ini` to use lower resolution, for example a 200 x 100 grid:

    [Grid]

    X1-grid    1    0.0    200    u    2.0
    X2-grid    1    0.0    100    u    1.0
    X3-grid    1    0.0    1      u    1.0
    
Once the code has finished, check out the notebook to learn how to visualize the data.