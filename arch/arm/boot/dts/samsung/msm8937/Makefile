ifeq ($(CONFIG_OF),y)

ifeq ($(CONFIG_SEC_LTE_PROJECT),y)
        ifeq ($(CONFIG_MACH_LTE_EUR_OPEN),y)
                dtb-y += msm8937-sec-lte-eur-r00.dtb
        endif
endif

ifeq ($(CONFIG_SEC_A7MVELTE_PROJECT),y)
        ifeq ($(CONFIG_MACH_A7MVELTE_CHN_OPEN),y)
                dtb-y += msm8937-sec-a7mvelte-chn-r00.dtb
        endif
endif

ifeq ($(CONFIG_ARM),y)
always          := $(dtb-y)
subdir-y        := $(dts-dirs)
else
targets += dtbs
targets += $(addprefix ../, $(dtb-y))
endif

$(obj)/../../%.dtb: $(src)/%.dts FORCE
        $(call if_changed_dep,dtc)

dtbs: $(addprefix $(obj)/../../,$(dtb-y))
endif
clean-files := *.dtb *.reserve.dts
