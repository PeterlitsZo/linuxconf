# for STL
python
import sys
sys.path.insert(0, "/usr/share/gcc-8/python")
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end

# for history
set history filename ~/.gdb_history
set history save on

# better obj-printer
set print object on

# better struct
set print pretty on

# for index
set print array-indexes on

