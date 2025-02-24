#!/bin/bash
echo "Enabling Debug Mode for Adobe CEP Extensions (CSXS.9 to CSXS.12)..."

# Set PlayerDebugMode for CSXS.9
defaults write com.adobe.CSXS.9 PlayerDebugMode 1
echo "CSXS.9 set to Debug Mode."

# Set PlayerDebugMode for CSXS.10
defaults write com.adobe.CSXS.10 PlayerDebugMode 1
echo "CSXS.10 set to Debug Mode."

# Set PlayerDebugMode for CSXS.11
defaults write com.adobe.CSXS.11 PlayerDebugMode 1
echo "CSXS.11 set to Debug Mode."

# Set PlayerDebugMode for CSXS.12
defaults write com.adobe.CSXS.12 PlayerDebugMode 1
echo "CSXS.12 set to Debug Mode."

echo "Debug Mode enabled for all versions!"
echo "Restart Premiere Pro to apply changes."
read -p "Press Enter to close..."