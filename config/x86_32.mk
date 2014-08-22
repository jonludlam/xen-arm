CONFIG_X86 := y
CONFIG_X86_32 := y
CONFIG_X86_$(XEN_OS) := y

CONFIG_HVM := y
CONFIG_MIGRATE := y
CONFIG_XCUTILS := y

CFLAGS += -m32 -march=i686

# Use only if calling $(LD) directly.
LDFLAGS_DIRECT_OpenBSD = _obsd
LDFLAGS_DIRECT_FreeBSD = _fbsd
LDFLAGS_DIRECT += -melf_i386$(LDFLAGS_DIRECT_$(XEN_OS))