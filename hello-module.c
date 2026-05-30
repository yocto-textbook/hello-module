#include <linux/module.h>

int init_module(void)
{
    printk("hello module!\n");
    printk("hello module!\n");
    printk("hello module!\n");
    printk("hello module!\n");
    printk("hello module!\n");
    return 0;
}

void cleanup_module(void)
{
    printk("Goodbye module!\n");
}

MODULE_LICENSE("MIT");
