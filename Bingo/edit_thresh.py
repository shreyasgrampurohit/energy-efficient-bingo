import re
import sys

# Set your fixed file path here
file_path = "/home/ee671/Documents/cs683/Bingo/prefetcher/bingo_thresh001_conf.llc_pref"

def modify_thresholds(inc_threshold, dec_threshold):
    # Read the file content
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Define the patterns to search for
    inc_pattern = re.compile(r'#define INC_MATCH_THRESHOLD (\d*\.\d+|\d+)')
    dec_pattern = re.compile(r'#define DEC_MATCH_THRESHOLD (\d*\.\d+|\d+)')

    # Update the threshold values
    for i, line in enumerate(lines):
        if inc_pattern.match(line):
            lines[i] = f'#define INC_MATCH_THRESHOLD {inc_threshold}\n'
        elif dec_pattern.match(line):
            lines[i] = f'#define DEC_MATCH_THRESHOLD {dec_threshold}\n'

    # Write the modified content back to the file
    with open(file_path, 'w') as file:
        file.writelines(lines)

    print(f"Thresholds updated: INC_MATCH_THRESHOLD = {inc_threshold}, DEC_MATCH_THRESHOLD = {dec_threshold}")

if __name__ == "__main__":
    # Check if the correct number of arguments is provided
    if len(sys.argv) != 3:
        print("Usage: python modify_thresholds.py <inc_threshold> <dec_threshold>")
    else:
        inc_threshold = sys.argv[1]
        dec_threshold = sys.argv[2]
        modify_thresholds(inc_threshold, dec_threshold)
