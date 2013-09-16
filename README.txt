mim_parkapproach_postproc
=========================

process aproach curves from park-afm to get topo and MIM-abs.

INSTRUCTIONS FOR USE:

1. data = import_fd_dir('<data_dir>') returns data matrix off all raw data
2. plot_all_mim(data) gives plot of all approach curves. The points of contact should be obvious. Note the z index range of these points. For instance, 9.4,9.8 is reasonable for singleALdot_32x32
3. mabs = mim_absolute(data,min,max,lift) will give you the mim absolute data. Simply plot with surf(mabs)
4. mtopo = mim_topo(data,min,max) gives topography extracted from the MIM approach curve. To make this plot meaningful, use subplane to subtract out the plane and then adjust the caxis to ignore outliers.

Note funciton documentation for further instruction.