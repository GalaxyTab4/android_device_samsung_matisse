add_lunch_combo cm_matisse-eng
add_lunch_combo cm_matisse-userdebug
sh device/samsung/matisse/patches/apply.sh
cp device/samsung/matisse/matisse.dependencies vendor/pac/dependencies
cp device/samsung/matisse/pac_matisse.mk vendor/pac/products
