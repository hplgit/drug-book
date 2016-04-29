"""Copy all figure files to one directory, but prefix filename with
directory name."""
import os, shutil
for dirpath, dirnames, filenames in os.walk(os.curdir):
    for filename in filenames:
        if filename.endswith('.pdf') or filename.endswith('.png'):
            # Figure file
            path = os.path.join(dirpath, filename)
            dest = os.path.join('fig', dirpath+'_'+filename)
            shutil.copy(path, dest)
            print 'copying', path, '->', dest


