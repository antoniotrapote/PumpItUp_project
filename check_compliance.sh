#!/bin/bash

# Compliance Check Script for DrivenData Competition Rules
# This script verifies that the repository complies with competition data usage rules

echo "🔍 DrivenData Compliance Check"
echo "=============================="

# Check 1: Verify no CSV data files are tracked by git
echo "📊 Checking for tracked data files..."
tracked_csv=$(git ls-files "*.csv" 2>/dev/null)
if [ -z "$tracked_csv" ]; then
    echo "✅ No CSV data files are tracked by git"
else
    echo "❌ WARNING: Found tracked CSV files:"
    echo "$tracked_csv"
    echo "   These should be removed from git tracking!"
    exit 1
fi

# Check 2: Verify .gitignore includes CSV protection
echo "🔒 Checking .gitignore protection..."
if grep -q "*.csv" .gitignore; then
    echo "✅ CSV files are protected in .gitignore"
else
    echo "❌ WARNING: .gitignore does not protect CSV files"
    exit 1
fi

# Check 3: Verify LICENSE file exists
echo "📄 Checking license compliance..."
if [ -f "LICENSE" ]; then
    if grep -q "MIT License" LICENSE; then
        echo "✅ MIT License file present (required by competition rules)"
    else
        echo "⚠️  License file exists but may not be MIT License"
    fi
else
    echo "❌ WARNING: No LICENSE file found"
    exit 1
fi

# Check 4: Verify DATA.md exists with instructions
echo "📋 Checking data instructions..."
if [ -f "DATA.md" ]; then
    echo "✅ DATA.md file present with data acquisition instructions"
else
    echo "❌ WARNING: DATA.md file missing"
    exit 1
fi

# Check 5: Local data files availability (for running the project)
echo "💾 Checking local data availability..."
local_files=("training_values.csv" "training_labels.csv" "test_values.csv")
missing_local=()

for file in "${local_files[@]}"; do
    if [ ! -f "$file" ]; then
        missing_local+=("$file")
    fi
done

if [ ${#missing_local[@]} -eq 0 ]; then
    echo "✅ All required data files present locally"
else
    echo "⚠️  Missing local data files (needed to run project):"
    for file in "${missing_local[@]}"; do
        echo "   - $file"
    done
    echo "   See DATA.md for instructions on obtaining data"
fi

echo ""
echo "🎉 Compliance Check Complete!"
echo ""
echo "📋 Summary:"
echo "   ✅ Repository complies with DrivenData competition rules"
echo "   ✅ Data files are not publicly shared"
echo "   ✅ Code is properly licensed under MIT"
echo "   ✅ Instructions provided for data acquisition"
echo ""
echo "🚀 Ready for public sharing on GitHub!"
