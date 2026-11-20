
from collections import deque

def water_jug():
    jug1 = 4
    jug2 = 3
    target = 2

    visited = set()
    queue = deque([(0, 0)])

    while queue:
        x, y = queue.popleft()

        if (x, y) in visited:
            continue

        visited.add((x, y))
        print(x, y)

        if x == target or y == target:
            print("Target reached!")
            return

        states = [
            (jug1, y),                 # Fill jug 1
            (x, jug2),                 # Fill jug 2
            (0, y),                    # Empty jug 1
            (x, 0),                    # Empty jug 2
            (x - min(x, jug2-y), y + min(x, jug2-y)), # Pour 1 to 2
            (x + min(y, jug1-x), y - min(y, jug1-x))  # Pour 2 to 1
        ]

        for state in states:
            if state not in visited:
                queue.append(state)

water_jug()
