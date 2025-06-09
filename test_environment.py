#!/usr/bin/env python3
"""
Test script to verify all required dependencies can be imported.
Run this after installing requirements.txt to ensure the environment is set up correctly.
"""

import sys


def test_imports():
    """Test that all required packages can be imported."""
    try:
        import pandas as pd
        print("✓ pandas imported successfully")

        import numpy as np
        print("✓ numpy imported successfully")

        import matplotlib.pyplot as plt
        print("✓ matplotlib imported successfully")

        import seaborn as sns
        print("✓ seaborn imported successfully")

        from ydata_profiling import ProfileReport
        print("✓ ydata-profiling imported successfully")

        from sklearn.ensemble import RandomForestClassifier
        from sklearn.model_selection import train_test_split, cross_val_score
        from sklearn.metrics import accuracy_score
        print("✓ scikit-learn imported successfully")

        import catboost
        print("✓ catboost imported successfully")

        import mlflow
        print("✓ mlflow imported successfully")

        print("\n🎉 All dependencies imported successfully!")
        return True

    except ImportError as e:
        print(f"❌ Import error: {e}")
        return False


if __name__ == "__main__":
    print("Testing PumpItUp project dependencies...\n")
    success = test_imports()
    sys.exit(0 if success else 1)
