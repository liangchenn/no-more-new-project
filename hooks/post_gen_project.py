import os
import subprocess

def init_git():
    os.chdir('../{{ cookiecutter.repo_name }}')
    subprocess.call(['git', 'init'])
    subprocess.call(['git', 'add', '.'])
    subprocess.call(['git', 'commit', '-m', 'initial commit'])


def main():
    if '{{ cookiecutter.use_git }}'.lower() in {'y', 'yes'}:
        init_git()


if __name__ == "__main__":
    main()
