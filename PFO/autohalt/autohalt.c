#include <dirent.h>
#include <errno.h>
#include <fcntl.h>
#include <linux/input.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/poll.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>
#include <time.h>
#include <unistd.h>

#include <sys/socket.h>
#include <linux/netlink.h>

#include <cutils/android_reboot.h>
#include <cutils/klog.h>
#include <cutils/list.h>
#include <cutils/misc.h>
#include <cutils/uevent.h>

static int read_status( char* file ) {
    int fd;
	int ret = -1;
	char buff[10];

    fd = open(file, O_RDONLY, 0);
    if (fd < 0)
	{
		perror( "Autohalt " );
        return -1;
	}

	read(fd, buff, 1 );
	switch( buff[0] ) {
	case '0':
		ret = 0;
		break;
	case '1':
		ret = 1;
		break;
	default:
		break;
	}

    close(fd);
    return ret;
}

static int read_ac_status( void )
{
	return read_status("/sys/class/power_supply/ac/online");
}

static int read_usb_status( void ) 
{
	return read_status("/sys/class/power_supply/usb/online");
}

static int commandOffScreen( void ) {
    int fd;
	char* buff;

    fd = open("/dev/esaio/alim_screen/value", O_RDWR, 0);
    if (fd < 0)
	{
		perror( "Autohalt " );
        return -1;
	}

	buff = "0";
	write(fd, buff, 2);
	printf( "Screen off\n" );

    close(fd);
    return 0;
}

int main(int argc, char **argv) {
	int ac, usb;
	printf( "Start autohalt\n" );
	while( 1 ) {
		ac = read_ac_status();
		usb = read_usb_status();
		if( (ac == 0) && (usb == 0) )
		{
			//commandOffScreen();
			printf( "Halt !!!!!!!!!!!!!!!!!!!!!\n" );
			android_reboot(ANDROID_RB_POWEROFF, 0, "");
		}
		usleep(100000);
	}
	
    return 0;
	
}
