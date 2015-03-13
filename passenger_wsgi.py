import sys, os

INTERP = os.path.join(os.environ['HOME'], 'rdfest', 'bin', 'python')

if sys.executable != INTERP:
    os.execl(INTERP, INTERP, *sys.argv)

sys.path.append(os.getcwd)

from routes import app as application
