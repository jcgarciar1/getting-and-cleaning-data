



## `resultData` variable

### key columns

Variable name       | Description
--------------------|------------
`subject`           | ID of subject, int (1-30)
`activity_num`      | ID of activity, int (1-6)
`activity_name`     | Label of activity, Factor w/ 6 levels
### non-key columns

Variable name       | Description
--------------------|------------
`variable`          | comlete name of the feature, Factor w/ 66 levels (eg. tBodyAcc-mean()-X) 
`value`             | the actual value, num (range: -1:1)
`dimension`         | dimension of measurement, Factor w/ 2 levels: `t` (Time) or `f` (Frequency)
`source`            | source of measurement, Factor w/ 3 levels: `Body`,`BodyBody` or `Gravity`
`type`              | type of measurement, Factor w/ 2 levels: `Acc` (accelerometer) or `Gyro` (gyroscope)
`jerk`              | is 'Jerk' signal , Factor w/ 2 levels:  `Jerk` or `` (non Jerk)
`magnitude`         | is 'Magnitude' value , Factor w/ 2 levels:  `Mag` or `` (non Mag)
`method`            | result from method , Factor w/ 2 levels:  `mean` (average) or `std` (standard deviation)
`axis`              | FFT exrapolated to axis , Factor w/ 2 levels:  `` (no FFT-axis) or `X`, `Y` or `Z`

## `tidyData` variable

### key columns

Variable name       | Description
--------------------|------------
`activity_name`     | Label of activity, Factor w/ 6 levels
`subject`           | ID of subject, int (1-30)
### non-key columns

Variable name       | Description
--------------------|------------
`dominioTiempoBodyAccelerometroMediaX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroMediaY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroMediaZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroDesviacionEstandarX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroDesviacionEstandarY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroDesviacionEstandarZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoGravityAccelerometroMediaX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoGravityAccelerometroMediaY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoGravityAccelerometroMediaZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoGravityAccelerometroDesviacionEstandarX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoGravityAccelerometroDesviacionEstandarY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoGravityAccelerometroDesviacionEstandarZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroJerkMediaX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroJerkMediaY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroJerkMediaZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroJerkDesviacionEstandarX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroJerkDesviacionEstandarY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroJerkDesviacionEstandarZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioMediaX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioMediaY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioMediaZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioDesviacionEstandarX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioDesviacionEstandarY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioDesviacionEstandarZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioJerkMediaX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioJerkMediaY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioJerkMediaZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioJerkDesviacionEstandarX`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioJerkDesviacionEstandarY`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioJerkDesviacionEstandarZ`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroMagnitud_mean`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroMagnitud_std`   | the average value for this feature, num (range: -1:1)
`dominioTiempoGravityAccelerometroMagnitud_mean`   | the average value for this feature, num (range: -1:1)
`dominioTiempoGravityAccelerometroMagnitud_std`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroJerkMagnitud_mean`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyAccelerometroJerkMagnitud_std`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioMagnitud_mean`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioMagnitud_std`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioJerkMagnitud_mean`   | the average value for this feature, num (range: -1:1)
`dominioTiempoBodyGiroscopioJerkMagnitud_std`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroMediaX`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroMediaY`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroMediaZ`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroDesviacionEstandarX`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroDesviacionEstandarY`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroDesviacionEstandarZ`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometro_meanFreq_X`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometro_meanFreq_Y`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometro_meanFreq_Z`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerkMediaX`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerkMediaY`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerkMediaZ`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerkDesviacionEstandarX`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerkDesviacionEstandarY`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerkDesviacionEstandarZ`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerk_meanFreq_X`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerk_meanFreq_Y`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyAccelerometroJerk_meanFreq_Z`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyGiroscopioMediaX`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyGiroscopioMediaY`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyGiroscopioMediaZ`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyGiroscopioDesviacionEstandarX`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyGiroscopioDesviacionEstandarY`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyGiroscopioDesviacionEstandarZ`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyGiroscopio_meanFreq_X`   | the average value for this feature, num (range: -1:1)
`dominioFrecuenciaBodyGiroscopio_meanFreq_Y`   | the average value for this feature, num (range: -1:1)
