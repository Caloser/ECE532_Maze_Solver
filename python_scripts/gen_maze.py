import numpy as np
import random
import cv2

maze_height = 240
maze_width = 320
path_width = 6  # Adjust path thickness


def generate_maze_iterative(maze, path_width):
    h, w = maze.shape

    # Start at (path_width, path_width)
    stack = [(path_width, path_width)]
    maze[path_width:path_width * 2, path_width:path_width * 2] = 0  # Start with a larger cleared area

    while stack:
        x, y = stack[-1]
        directions = [(0, path_width * 2), (0, -path_width * 2),
                      (path_width * 2, 0), (-path_width * 2, 0)]
        random.shuffle(directions)

        for dx, dy in directions:
            nx, ny = x + dx, y + dy
            if path_width <= nx < w - path_width and path_width <= ny < h - path_width and maze[ny, nx] == 255:
                # Carve a larger path
                maze[ny - path_width + 1:ny + 1, nx - path_width + 1:nx + 1] = 0
                # Remove a wider wall between the current and next cell
                if dx == 0:
                    maze[min(y, ny):max(y, ny) + 1, x - path_width + 1:x + 1] = 0
                else:
                    maze[y - path_width + 1:y + 1, min(x, nx):max(x, nx) + 1] = 0

                stack.append((nx, ny))
                break
        else:
            stack.pop()  # Backtrack if no available moves


# Initialize a white maze (walls)
maze = np.ones((maze_height, maze_width), dtype=np.uint8) * 255
generate_maze_iterative(maze, path_width)

# Save the maze with thicker paths
maze_path = "maze_240x320.png"
cv2.imwrite(maze_path, maze)
