# Talebook on Synology Docker

Host your talebook on synology with special performance-oriented optimization.

## Before Reading

You must be quite familiar with command line and docker. Everything you do by following this readme
is full of risk. Your data is valuable, any mistakes you have made could damange your data.

## The Optimization Checklist

1. Using MySQL instead of the default SQLite3 as the talebook database.
2. Add permission for new registered users when you make your talebook public.
3. Disable the web spider for hiding your talebook.
4. Disable the register API for better security.
5. Mount the calibre's database on memory.
6. Cleanup your talebook logs and other temp files.
7. Add a self hosted [Douban API](https://github.com/cxfksword/douban-api-rs).

## How to Install this on your Synology

1. Install git on your synology from **[SynoCommunity repository](https://packages.synocommunity.com/)**.

2. Clone this project, rename it as `talebook` and put it to the default path `/volume1/docker`

```shell
cd /volume1/docker/
git clone https://github.com/syhily/docker-talebook.git talebook
```

>The default install path can be changed on your own needs. You should modify all the scripts and test it by yourself.

3. Rename your calibre directory, move it to `/volume1/docker/talebook/books`

```shell
# Rename
mv /path-to-your/calibre-library library
# Move
mv library /volume1/docker/talebook/books
```

4. Mount the memory disk for your calibre database. Execute the `scripts/mount-ramdisk.sh`. You should create a Synology startup tasks by running this script with `root` privilege.

5. Start up the talebook, `docker-compose up -d`.

6. The database on ramdisk should be synced for making data consistence. Create a Synology schedule task for executing the `scripts/update-original.sh` every minute.

**Caution ⚠️：** We recommend adding books or deleting books on talebook side. Don't using calibre for avoiding data missing after you enabling this schedule task.
The latest talebook bundled a good batch import mechanism. Copy your books to `/volume1/docker/talebook/imports`, you can scan the new books and import them into talebook.

7. Create a daily Synology schedule task for executing the `scripts/daily-cleanup-talebook.sh`.
