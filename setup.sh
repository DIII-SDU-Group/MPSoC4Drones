echo "Setting up Vivado project directory structure"
cp .donttouch/U20U96.xpr vivado_project/
mkdir -p vivado_project/U20U96.gen/sources_1/bd/u96v2_sbc_base/hdl/
cp .donttouch/u96v2_sbc_base_wrapper.vhd vivado_project/U20U96.gen/sources_1/bd/u96v2_sbc_base/hdl/u96v2_sbc_base_wrapper.vhd
cp -r .donttouch/U20U96.srcs vivado_project/
mkdir vivado_project/U20U96.ip_user_files/

echo "Changing ownership of folders to current user - will prompt for sudo password"
sudo chown -R $USER ./
sudo chgrp -R $USER ./

echo "Finished"
