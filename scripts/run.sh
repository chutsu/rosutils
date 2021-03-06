#!/usr/bin/env

# ./scripts/plot_ts_diff.m ./ts.csv

# BAG_PATHS=(/data/aabm/roll.bag /data/aabm/pitch.bag)
#
# convert_bag() {
#   BAG_PATH=$1;
#
#   python src/bag2csv.py \
#     $BAG_PATH \
#     /AABM_01/abm_ucl/vrpn_client/raw_transform \
#     raw_transform.csv
#
#   python src/bag2csv.py \
#     $BAG_PATH \
#     /AABM_01/mavros/imu/data \
#     imu.csv
#
#   python src/bag2csv.py \
#     $BAG_PATH \
#     /AABM_01/mavros/setpoint_raw/target_attitude \
#     target_attitude.csv
#
#   zip `basename ${BAG_PATH/.bag/.zip}` raw_transform.csv imu.csv target_attitude.csv
#   rm raw_transform.csv
#   rm imu.csv
#   rm target_attitude.csv
# }

# for BAG_PATH in ${BAG_PATHS[@]}; do
#   convert_bag $BAG_PATH
# done

BAG=~/Downloads/MPCcircleTest_TrajQxQy7.5_3.5__7.0_0.5_GoodFlight.bag

# python src/bag2csv.py \
#   $BAG \
#   /AABM_01/mavros/local_position/odom \
#   odom.csv

# python src/bag2csv.py \
#   $BAG \
#   /AABM_01/autopilot/TrajectoryReference \
#   traj.csv

# python src/bag2csv.py \
#   $BAG \
#   /AABM_01/autopilot/PositionReference \
#   pos_ref.csv

# python src/bag2csv.py \
#   $BAG \
#   /AABM_01/mavros/battery \
#   battery.csv

python scripts/aabm_debug.py $BAG


# python src/bag2imgs.py \
#   /data/euroc_mav/calib/cam_april.bag \
#   /cam0/image_raw \
#   /tmp/cam0
#
# python src/bag2imgs.py \
#   /data/euroc_mav/calib/cam_april.bag \
#   /cam1/image_raw \
#   /tmp/cam1
