#!/usr/bin/python
import os
import sys


if __name__ == "__main__":
    for filename in os.listdir("."):
        with open(filename, 'r+') as file_handle:
            data = file_handle.read()
            # print data
            if data.startswith("Time,Bytes"):
                data_list = list(data)
                if data[10] != '\n':
                    print "Fixing {}".format(filename)
                    data_list.insert(10, '\n')
                    new_data = ''.join(data_list)
                    # print new_data
                    # sys.exit(-1)
                    file_handle.seek(0)
                    file_handle.truncate(0)
                    file_handle.write(new_data)
                    # sys.exit(0)
                else:
                    print "Skipping {}".format(filename)
