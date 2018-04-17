#include <linux/module.h>
#include <linux/tty.h>
#include <linux/init.h>
#include <linux/kernel.h>

int generate_init(void)
{
        printk(KERN_ALERT "HELLO, World\n");
	    return 0;
}

void generate_exit(void)
{
        printk(KERN_ALERT "bye bye\n");
}

module_init(generate_init);
module_exit(generate_exit);
