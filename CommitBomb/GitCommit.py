import os
import subprocess
from datetime import datetime, timedelta

def write_counter(file_path, count):
    # Write the counter to the text file
    with open(file_path, 'w') as f:
        f.write(str(count))

def commit_changes(date,FILE_PATH):
    # Set GIT_COMMITTER_DATE for the commit date
    os.environ['GIT_COMMITTER_DATE'] = date.strftime('%Y-%m-%d %H:%M:%S')
    os.environ['GIT_AUTHOR_DATE'] = date.strftime('%Y-%m-%d %H:%M:%S')
    
    # Stage the file
    subprocess.run(['git', 'add', FILE_PATH])
    
    # Commit changes
    subprocess.run(['git', 'commit', '-m', 'Increment counter'])

def main():
    # Constants
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    FILE_PATH = 'counter.txt'  # Path to your text file
    START_DATE = datetime(2022, 1, 1)  # Start date for commits
    NUMBER_OF_COMMITS = 30  # Define how many commits you want to backfill

    for count in range(1, NUMBER_OF_COMMITS + 1):
        write_counter(FILE_PATH, count)
        commit_changes(START_DATE,FILE_PATH)
        print(f"Committed '{count}' for date: {START_DATE.strftime('%Y-%m-%d %H:%M:%S')}")

        # Move to the next day
        START_DATE += timedelta(days=1)

if __name__ == '__main__':
    main()