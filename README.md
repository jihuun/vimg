# vimg

Opening vim with the result which was searched by grep easily

Usage:

````bash
 $ grep -nr "i2c_device_probe" ./*
 ./drivers/i2c/i2c-core-base.c:266:static int i2c_device_probe(struct device *dev)
 ./drivers/i2c/i2c-core-base.c:438:	.probe		= i2c_device_probe,

 # Copy whole line which you want to look in the file and paste it as a parameter of vimg
 $ vimg ./drivers/i2c/i2c-core-base.c:438:	.probe		= i2c_device_probe,
````

Then the cussor will be placed on the exact line what you want to look.

````c
435 struct bus_type i2c_bus_type = {
436         .name           = "i2c",
437         .match          = i2c_device_match,
438         .probe          = i2c_device_probe,
439         .remove         = i2c_device_remove,
440         .shutdown       = i2c_device_shutdown,
441 };
442 EXPORT_SYMBOL_GPL(i2c_bus_type);
443 
444 struct device_type i2c_client_type = {
````
