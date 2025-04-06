import argparse
import math

def serialize(input_path:str,
              output_path:str,
              start_row=0,
              start_col=0,
              end_row=0,
              end_col=0,
              generate_golden_output=False,
              to_completion=True):
    serialized_maze = []
    maze = []
    with open(input_path,"r") as file:
        lines = file.readlines()
        for line in lines:
            serialized_maze += [char for char in line.strip()]
            maze.append([int(char) for char in line.strip()])
    print(serialized_maze)
    print(maze)
    with open(output_path,"w") as file2:
        for line in serialized_maze:
            file2.write(line+"\n")

    if generate_golden_output:
        num_rows = len(maze)
        num_cols = len(maze[0])
        num_bits = math.ceil(math.log2(num_rows * num_cols))
        inf = 2**num_bits-1
        dist = [[inf for j in range(num_cols)] for i in range(num_rows)]
        print(num_bits, inf, dist)
        queue = []
        queue.append((start_row,start_col))
        dist[start_row][start_col] = 0
        while(len(queue) != 0):
            curr_row,curr_col = queue.pop(0)
            curr_dist = dist[curr_row][curr_col]
            if (curr_row-1 >= 0) and (maze[curr_row-1][curr_col] == 0) and (dist[curr_row-1][curr_col] == inf):
                dist[curr_row-1][curr_col] = curr_dist + 1
                if(not to_completion and curr_row-1 == end_row and curr_col == end_col): break
                queue.append((curr_row-1,curr_col))
            if (curr_row+1 < num_rows) and (maze[curr_row+1][curr_col] == 0) and (dist[curr_row+1][curr_col] == inf):
                dist[curr_row+1][curr_col] = curr_dist + 1
                if(not to_completion and curr_row+1 == end_row and curr_col == end_col): break
                queue.append((curr_row+1,curr_col))
            if (curr_col-1 >= 0) and (maze[curr_row][curr_col-1] == 0) and (dist[curr_row][curr_col-1] == inf):
                dist[curr_row][curr_col-1] = curr_dist + 1
                if(not to_completion and curr_row == end_row and curr_col-1 == end_col): break
                queue.append((curr_row,curr_col-1))
            if (curr_col+1 < num_cols) and (maze[curr_row][curr_col+1] == 0) and (dist[curr_row][curr_col+1] == inf):
                dist[curr_row][curr_col+1] = curr_dist + 1
                if(not to_completion and curr_row == end_row and curr_col+1 == end_col): break
                queue.append((curr_row,curr_col+1))
    
        print(dist)
        with open(output_path.split(".")[0]+"_golden_output.txt","w") as file2:
            for i in range(num_rows):
                for j in range(num_cols):
                    file2.write(f"{dist[i][j]:0{math.ceil(num_bits/4)}x}\n")

def deserialize(input_path:str, output_path:str, num_rows:int, num_cols:int):
    deserialized_maze = [[] for i in range(num_rows)]
    with open(input_path,"r") as file:
        lines = file.readlines()
        curr_row = 0
        curr_col = 0
        for line in lines:
            deserialized_maze[curr_row].append(line.strip())
            curr_col += 1
            curr_col %= num_cols
            if(curr_col == 0):
                curr_row += 1
    print(deserialized_maze)
    with open(output_path,"w") as file2:
        for line in deserialized_maze:
            file2.write(" ".join(line)+"\n")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--input_path", required=True)
    parser.add_argument("--output_path", required=True)
    parser.add_argument("--serialize", required=False)
    parser.add_argument("--deserialize", required=False)
    parser.add_argument("--num_rows", required=False)
    parser.add_argument("--num_cols", required=False)
    parser.add_argument("--golden_output", required=False, default=False)
    parser.add_argument("--start_row", required=False, default=0)
    parser.add_argument("--start_col", required=False, default=0)
    parser.add_argument("--end_row", required=False, default=0)
    parser.add_argument("--end_col", required=False, default=0)
    args = parser.parse_args()

    if args.input_path and args.output_path and args.serialize:
        serialize(args.input_path, args.output_path, int(args.start_row), int(args.start_col), int(args.end_row), int(args.end_col), bool(args.golden_output))

    if args.input_path and args.output_path and args.deserialize and args.num_rows and args.num_cols:
        deserialize(args.input_path, args.output_path, int(args.num_rows), int(args.num_cols))
