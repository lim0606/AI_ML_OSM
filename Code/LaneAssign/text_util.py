import numpy as np
import sys, time

# time.clock() is cpu time of current process
# time.time() is wall time
def progprint_xrange(n,**kwargs):
    return progprint(xrange(n),total=n,**kwargs)

def progprint(iterator,total=None,perline=25,show_times=True):
    times = []
    idx = 0
    for thing in iterator:
        prev_time = time.time()
        yield thing
        times.append(time.time() - prev_time)
        sys.stdout.write('.')
        if (idx+1) % perline == 0:
            if show_times:
                avgtime = np.mean(times)
                if total is not None:
                    sys.stdout.write(' [%d/%d, %0.2fsec avg, %0.2fsec ETA]\n' % (idx+1,total,avgtime,avgtime*(total-(idx+1))))
                else:
                    sys.stdout.write(' [%d done, %0.2fsec avg]\n' % (idx+1,avgtime))
            else:
                if total is not None:
                    sys.stdout.write(' [%d/%d]\n' % (idx+1,total))
                else:
                    sys.stdout.write(' [%d]\n' % (idx+1))
        idx += 1
        sys.stdout.flush()
    print ''
    if show_times:
        print '%0.2fsec avg, %0.2fsec total\n' % (np.mean(times),np.sum(times))

