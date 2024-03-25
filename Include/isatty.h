
static int isatty(int fd)
{
    if (fd == 0 || fd == 1 || fd == 2)
        return 1;
    
    return 0;
}