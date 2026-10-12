from collections import Counter
import re
import matplotlib.pyplot as plt
import numpy as np

opt_levels = ["O2", "Os"]

log_pattern = re.compile(r"^\d+\s+\{[0-9A-Fa-f]+\}\s+([a-zA-Z_]+)")

for opt_level in opt_levels:
    log_file = f"simple_track_{opt_level}.log"
    opcodes = []

    with open(log_file, "r") as f:
        for line in f:
            match = log_pattern.search(line)
            if match:
                opcodes.append(match.group(1))

    fig, axes = plt.subplots(5, 1, figsize=(12, 16), constrained_layout=True)

    fig.suptitle(
        f"Top Code Execution Patterns for {opt_level} (Window Lengths 1 to 5)",
        fontsize=25,
        fontweight="bold",
    )

    for k in range(1, 6):
        ngrams = [
            "->".join(opcodes[i : i + k]) for i in range(len(opcodes) - k + 1)
        ]
        top_patterns = Counter(ngrams).most_common(5)

        ax = axes[k - 1]
        patterns, counts = zip(*top_patterns)
        colors = plt.cm.Blues(np.linspace(0.4, 0.85, len(patterns)))
        ax.barh(patterns, counts, color=colors, edgecolor="none")
        ax.set_title(f"Window Length {k}", fontsize=16, loc="left", fontweight="bold")
        ax.set_xlabel("Frequency")
        ax.set
        ax.invert_yaxis()  # Most frequent pattern at the top
        ax.set_title(f"Window Length {k}", fontsize=16, loc="left", fontweight="bold")

    plt.savefig(f"code_patterns_{opt_level}.png", dpi=300)
