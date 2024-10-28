#!/bin/bash

# List of required dependencies
dependencies=("python" "java" "xquartz" "swig" "maven" "udunits" "openmotif" "llvm")

# Function to check if a package is installed
is_installed() {
    brew list --versions "$1" > /dev/null 2>&1
}

# Update Homebrew to ensure the latest package information
brew update

# Loop through the dependencies
for pkg in "${dependencies[@]}"; do
    if ! is_installed "$pkg"; then
        echo "$pkg is not installed. Installing..."
        brew install "$pkg"
    else
        echo "$pkg is already installed."
    fi
done

echo "All dependencies checked."


#rm -rf %{buildroot}
#mkdir -p %{buildroot}/usr/bin/trick/bin
#mkdir -p %{buildroot}/usr/bin/trick/include/
#mkdir -p %{buildroot}/usr/bin/trick/lib64
#mkdir -p %{buildroot}/usr/bin/trick/libexec

#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rk2_heun/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/position_verlet/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/mm4/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rk4/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rkg4/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rkn4/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/beeman/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/velocity_verlet/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/symplectic_euler/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/euler/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/core/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/abm4/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rk2_midpoint/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rkf78/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/nl2/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rkf45/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/trick/integration/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/trick/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/interface/include
#mkdir -p %{buildroot}/usr/bin/trick/trick_source/er7_utils/math/include

# Copy the files to the appropriate locations
#cp -r ${TRICK_HOME}/bin %{buildroot}/usr/bin/trick/bin/
#cp -r ${TRICK_HOME}/include %{buildroot}/usr/bin/trick/include/
#cp -r ${TRICK_HOME}/lib64 %{buildroot}/usr/bin/trick/lib64/
#cp -r ${TRICK_HOME}/libexec %{buildroot}/usr/bin/trick/libexec
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/rk2_heun/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rk2_heun/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/position_verlet/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/position_verlet/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/mm4/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/mm4/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/rk4/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rk4/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/rkg4/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rkg4/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/rkn4/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rkn4/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/beeman/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/beeman/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/velocity_verlet/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/velocity_verlet/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/symplectic_euler/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/symplectic_euler/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/euler/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/euler/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/core/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/core/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/abm4/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/abm4/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/rk2_midpoint/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rk2_midpoint/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/rkf78/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rkf78/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/nl2/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/nl2/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/integration/rkf45/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/integration/rkf45/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/trick/integration/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/trick/integration/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/trick/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/trick/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/interface/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/interface/include
#cp -r ${TRICK_HOME}/trick_source/er7_utils/math/include %{buildroot}/usr/bin/trick/trick_source/er7_utils/math/include