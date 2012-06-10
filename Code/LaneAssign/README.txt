HDP-HSMM Weak-Limit Sampling Code
Version 0.1.1 (minor fixes 2011.9.13)
by Matthew Johnson (mattjj@csail.mit.edu)

== Requirements ==

Tested with Numpy 1.6.1, Scipy 0.9.0, Matplotlib 1.0.1, Python 2.7.2, and
IPython 0.11.

There is a potential NaN problem with earlier versions of Numpy (before 1.4.0),
in which the logaddexp function does not handle infinities correctly, which can
yield NaN results in some cases. To test if you have this problem, you can type
this in your IPython shell:

In [1]: import numpy as np

In [2]: np.exp(np.logaddexp(np.log(0.1),-np.inf)) # should not produce a NaN
Out[2]: 0.10000000000000002


== Use ==

A good place to start looking is demo.py, which is meant to be run from within
IPython with a command like

In [1]: run demo.py

The variables in the file will end up in your interactive environment.
