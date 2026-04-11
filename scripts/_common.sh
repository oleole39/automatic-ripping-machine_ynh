#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

#Number of CPU cores on the machine - the highest, the quickest it will compile
cpu_count=$(nproc --all)

function _build_makemkv()
{
    ynh_setup_source --dest_dir="$install_dir/makemkv/bin" --source_id="makemkv_bin"
    pushd "$install_dir/makemkv/bin"
        mkdir -p ./tmp
        echo "yes" >> ./tmp/eula_accepted
        make -s -j"${cpu_count}"
        make install
    popd

    ynh_setup_source --dest_dir="$install_dir/makemkv/oss" --source_id="makemkv_oss"
    pushd "$install_dir/makemkv/oss"
        ./configure --disable-gui
        make -s -j"${cpu_count}"
        make install
    popd
    
    ynh_safe_rm "$install_dir/makemkv" #clean build folder after make install
}

function _build_handbrake()
{
    ynh_setup_source --dest_dir="$install_dir/handbrake" --source_id="handbrake"
    pushd "$install_dir/handbrake"
        ./configure --launch-jobs="${cpu_count}" --launch --enable-qsv --enable-vce --disable-gtk
        make --directory=build install
    popd
    
    ynh_safe_rm "$install_dir/handbrake" #clean build folder after make install
}

function _read_manifest_resource_version()
{
    ynh_read_manifest "resources.sources.$1.url" | grep -o "[0-9]\{1,2\}\.[0-9]\{1,2\}\.[0-9]\{1,2\}"
}
