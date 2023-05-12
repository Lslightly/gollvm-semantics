import os
import subprocess
testdir=[
    'issue54247',
    'blocks'
]
def isLLVM(f:str) -> bool:
    return f.endswith(".ll")

class Error:
    def __init__(self, file, cmd, err) -> None:
        self.file = file
        self.cmd = cmd
        self.err = err

if __name__ == '__main__':
    failed_list = []
    for dir in testdir:
        files = os.listdir(dir)
        for f in files:
            if isLLVM(f):
                path = os.path.join(dir, f)
                cmd = f"krun {path} --definition ../../src/gollvm-syntax-kompiled"
                print(cmd)
                p = subprocess.run(cmd, shell=True, stderr=subprocess.PIPE, stdout=subprocess.PIPE)
                if p.returncode != 0:
                    failed_list.append(Error(path, cmd, str(p.stderr.decode())))
    print('----failed----')
    with open('err', 'w') as f:
        for err in failed_list:
            print(err.file)
            print(err.file, err.err, file=f)
        
                

