ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH := $(call my-dir)

# lsof
include $(CLEAR_VARS)

LOCAL_SRC_FILES := dialects/linux/dfile.c dialects/linux/dmnt.c dialects/linux/dnode.c dialects/linux/dproc.c dialects/linux/dsock.c dialects/linux/dstore.c \
	lib/ckkv.c lib/cvfs.c lib/dvch.c lib/fino.c lib/isfn.c lib/lkud.c lib/pdvn.c lib/prfp.c \
        lib/ptti.c lib/rdev.c lib/regex.c lib/rmnt.c lib/rnam.c lib/rnch.c lib/rnmh.c lib/snpf.c \
        arg.c main.c misc.c node.c print.c proc.c store.c usage.c \
        util.c

LOCAL_CFLAGS += -DLINUXV=26032 -DGLIBCV=211 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -DHAS_STRFTIME -DLSOF_VSTR=\"2.6.32.15\"
LOCAL_MODULE := lsof
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)

endif
