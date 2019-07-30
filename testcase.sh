#! /bin/bash
echo "Entering script"
git clone -b develop https://github.com/su2code/TestCases.git ./TestData
cp -R ./TestData/* ./TestCases/
    # Get the tutorial cases
git clone -b develop https://github.com/su2code/su2code.github.io ./Tutorials 
    # Enter the SU2/TestCases/ directory, which is now ready to run
cd TestCases/
echo "Directory moved & now running script"
python serial_regression.py
python parallel_regression_AD.py
python serial_regression_AD.py
python parallel_regression.py
